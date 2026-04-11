import sounddevice as sd
import numpy as np
import librosa
from scipy.spatial.distance import cdist

# --------------------------
# Record Audio Function
# --------------------------
def record_audio(duration=2, fs=16000):
    print("Recording...")
    audio = sd.rec(int(duration * fs), samplerate=fs, channels=1)
    sd.wait()
    print("Done!")
    return audio.flatten(), fs


# --------------------------
# Extract MFCC Features
# --------------------------
def extract_mfcc(audio, fs):
    mfcc = librosa.feature.mfcc(y=audio, sr=fs, n_mfcc=13)
    return mfcc.T   # transpose for DTW


# --------------------------
# DTW Distance Function
# --------------------------
def dtw_distance(x, y):
    dist = cdist(x, y, metric='euclidean')
    
    D = np.zeros((len(x), len(y)))
    D[0,0] = dist[0,0]

    for i in range(1, len(x)):
        D[i,0] = dist[i,0] + D[i-1,0]

    for j in range(1, len(y)):
        D[0,j] = dist[0,j] + D[0,j-1]

    for i in range(1, len(x)):
        for j in range(1, len(y)):
            D[i,j] = dist[i,j] + min(D[i-1,j], D[i,j-1], D[i-1,j-1])

    return D[-1,-1]


# --------------------------
# Record Templates
# --------------------------
print("Record LEFT command")
audio_left, fs = record_audio()
mfcc_left = extract_mfcc(audio_left, fs)

print("Record RIGHT command")
audio_right, fs = record_audio()
mfcc_right = extract_mfcc(audio_right, fs)


# --------------------------
# Test Command
# --------------------------
print("\nSpeak a command (left/right)")
test_audio, fs = record_audio()
test_mfcc = extract_mfcc(test_audio, fs)


# --------------------------
# Compare using DTW
# --------------------------
dist_left = dtw_distance(test_mfcc, mfcc_left)
dist_right = dtw_distance(test_mfcc, mfcc_right)

# --------------------------
# Prediction
# --------------------------
if dist_left < dist_right:
    print("Predicted Command: LEFT")
else:
    print("Predicted Command: RIGHT")


# --------------------------
# Limitation
# --------------------------
print("\nLimitation: Sensitive to noise and speaker variation")