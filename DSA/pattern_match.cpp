#include <iostream>
using namespace std;

int main() {
    string text, pattern;

    // Input the text
    cout << "Enter the text: ";
    getline(cin, text);

    // Input the pattern to search for
    cout << "Enter the pattern: ";
    getline(cin, pattern);

    int textLen = text.length();
    int patternLen = pattern.length();
    bool found = false;

    // Loop through the text up to the point where the pattern can fit
    for (int i = 0; i <= textLen - patternLen; i++) {
        int j;

        // Check the current substring with the pattern
        for (j = 0; j < patternLen; j++) {

            if (text[i + j] != pattern[j]) {
                break;
            }
        }

       
        if (j == patternLen) {
            cout << "Pattern found at position: " << i << endl;
            found = true; // Set found to true
        }
    }

    // If no match is found
    if (!found) {
        cout << "Pattern not found in the text" << endl;
    }

    return 0;
}
