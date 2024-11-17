import numpy as np
import matplotlib.pyplot as plt

# Define the sequence x(n)
n = np.arange(-5, 6)
x = 2 * (n == -2) - (n == 4)

# Plot the sequence
plt.stem(n, x)
plt.title('Plot of x(n) = 2*del(n+2) - del(n-4)')
plt.xlabel('n')
plt.ylabel('x(n)')
plt.axis([-6, 6, -3, 3])
plt.grid(True)
plt.show()
