# Lab 7: Demonstrate Consistency by Increasing Sample Size

# Parameters
mu <- 5                 # True mean
sigma <- 2              # True standard deviation
sample_sizes <- c(10, 30, 100, 500, 1000)  # Different sample sizes
N_sim <- 1000           # Number of simulations

# Initialize vectors
means <- numeric(length(sample_sizes))
vars <- numeric(length(sample_sizes))

# Simulation
set.seed(123)  # Ensure reproducibility

for (i in seq_along(sample_sizes)) {  # Correct loop iteration method
  n <- sample_sizes[i]  # Current sample size
  sample_means <- replicate(N_sim, mean(rnorm(n, mean = mu, sd = sigma)))  # Simulate means
  means[i] <- mean(sample_means)  # Store the mean of simulated means
  vars[i] <- var(sample_means)  # Store the variance of simulated means
}

# Graphical Output
par(mfrow = c(1, 2))  # Set up 1-row, 2-column layout

# Plot sample means
plot(sample_sizes, means, type = "b", col = "blue", pch = 16, lwd = 2,
     main = "Convergence of Sample Mean", xlab = "Sample Size", ylab = "Sample Mean")
abline(h = mu, col = "red", lwd = 2)  # True mean line

# Plot sample variances
plot(sample_sizes, vars, type = "b", col = "green", pch = 16, lwd = 2,
     main = "Convergence of Sample Variance", xlab = "Sample Size", ylab = "Sample Variance")
abline(h = sigma^2, col = "red", lwd = 2)  # True variance line
