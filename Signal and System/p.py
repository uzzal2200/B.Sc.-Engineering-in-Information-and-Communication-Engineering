import numpy as np

def impseq(n0, n1, n2):
    # Generates x(n) = delta(n - n0); n1 <= n <= n2
    n = np.arange(n1, n2 + 1)
    x = (n - n0) == 0
    return x, n
d = impseq(1,5,0.1)
print(d)