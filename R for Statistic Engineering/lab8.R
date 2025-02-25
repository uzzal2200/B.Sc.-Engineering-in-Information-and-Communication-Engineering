# Lab 8: Compare Biased and Unbiased Estimators

# Load necessary package
if (!require(BSDA)) install.packages("BSDA", dependencies = TRUE)
library(BSDA)

# Parameters
mu <- 5
sigma <- 2
n <- 30
N_sim <- 1000

# Initialize vectors
sample_vars <- numeric(N_sim)  # Unbiased variance
biased_vars <- numeric(N_sim)  # Biased variance

# Simulation
set.seed(123)
for (i in 1:N_sim) {
  data <- rnorm(n, mean = mu, sd = sigma)  # Generate random normal data
  sample_vars[i] <- var(data)  # Unbiased variance (default in R)
  biased_vars[i] <- sum((data - mean(data))^2) / n  # Biased variance
}

# Graphical Output
par(mfrow = c(1, 2))

# Histogram of unbiased variances
hist(sample_vars, breaks = 30, col = "lightblue", main = "Unbiased Sample Variance",
     xlab = "Variance", border = "white")
abline(v = sigma^2, col = "red", lwd = 2)

# Histogram of biased variances
hist(biased_vars, breaks = 30, col = "lightgreen", main = "Biased Sample Variance",
     xlab = "Variance", border = "white")
abline(v = sigma^2, col = "red", lwd = 2)

# Create two groups for comparison
set.seed(123)
group1 <- rnorm(n, mean = mu, sd = sigma)
group2 <- rnorm(n, mean = mu + 1, sd = sigma)  # Mean shifted by 1

# Perform Z-test (assuming known population variance)
z_test_result <- z.test(group1, group2, sigma.x = sigma, sigma.y = sigma)

# Output the test results
print(z_test_result)

# Graphical Output
par(mfrow = c(1, 2))

# Histogram of Group 1
hist(group1, breaks = 30, col = "lightblue", main = "Histogram of Group 1",
     xlab = "Value", border = "white")

# Histogram of Group 2
hist(group2, breaks = 30, col = "lightgreen", main = "Histogram of Group 2",
     xlab = "Value", border = "white")
