
# Parameters
mu <- 5
sigma <- 2
n <- 30
N_sim <- 1000

# Initialize vectors
sample_means <- numeric(N_sim)
sample_vars <- numeric(N_sim)

# Simulation
set.seed(123)
for (i in 1:N_sim) {
    data <- rnorm(n, mean = mu, sd = sigma)
    sample_means[i] <- mean(data)
    sample_vars[i] <- var(data)
}
correlation <- cor(sample_means, sample_vars)
print(paste("Correlation between sample mean and sample variance:", correlation))
# Graphical Output
par(mfrow = c(2, 2))

# Histogram of sample means
hist(sample_means, breaks = 30, col = "lightblue", main = "Sample Means", xlab = "Mean", border = "white")

# Histogram of sample variances
hist(sample_vars, breaks = 30, col = "lightgreen", main = "Sample Variances", xlab = "Variance", border = "white")

# Scatterplot of sample means vs. sample variances
plot(sample_means, sample_vars, pch = 19, col = rgb(0, 0, 1, 0.5), main = "Mean vs. Variance", xlab = "Mean", ylab = "Variance")

# Q-Q plot for sample means
qqnorm(sample_means, main = "Q-Q Plot (Sample Means)", col = "blue")
qqline(sample_means, col = "red", lwd = 2)


# Explanation of Lab

# lab-1:
# mu = 5: Mean of the normal distribution.
# sigma = 2: Standard deviation of the normal distribution.
# n = 30: Sample size for each simulation.
# N_sim = 1000: Number of simulations (Monte Carlo repetitions).

# Creates empty vectors sample_means and sample_vars to store results of 1000 simulations.

# set.seed(123): Ensures reproducibility.
# Runs a loop 1000 times:
# Generates n = 30 random numbers from a normal distribution (rnorm(n, mu, sigma)).
# Computes the sample mean and stores it in sample_means[i].
# Computes the sample variance and stores it in sample_vars[i].

# Calculates and prints the correlation between sample means and sample variances.
# If Fisher’s Lemma holds, the correlation should be close to zero, indicating independence

# Sets up a 2×2 plotting area for four graphs.

# Overlays a red normal curve (dnorm(x, mu, sigma/sqrt(n))) showing the theoretical distribution of sample means (Central Limit Theorem)

# Plots a histogram of sample_vars.
# Overlays a blue Chi-square distribution curve, which is the theoretical distribution of sample variances.

# Plots sample_means vs. sample_vars as a scatterplot.
# Adds a horizontal red line at sigma^2 = 4, representing the true variance

# Generates a Q-Q plot to check if sample_means follow a normal distribution.
# A red reference line (qqline) shows the expected normality pattern.