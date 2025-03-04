# set.seed(123)  # Set seed for reproducibility

n <- 10  # Sample size for the t-distribution
N_sim <- 1000  # Number of simulations

# Generate random samples from t-distribution and normal distribution
t_data <- rt(N_sim, df = n - 1)  # t-distribution data
normal_data <- rnorm(N_sim)  # Normal distribution data

par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid

# Histogram of t-distribution
hist(t_data, probability = TRUE, col = "lightblue", main = "t-Distribution", border = "white")
curve(dt(x, df = n - 1), add = TRUE, col = "red", lwd = 2)  # Overlay theoretical t-distribution

# Histogram of normal distribution
hist(normal_data, probability = TRUE, col = "lightgreen", main = "Normal Distribution", border = "white")
curve(dnorm(x), add = TRUE, col = "blue", lwd = 2)  # Overlay theoretical normal distribution

# Density comparison of t-distribution and normal distribution
plot(density(t_data), col = "red", lwd = 2, main = "Density Comparison")
lines(density(normal_data), col = "blue", lwd = 2)
legend("topright", legend = c("t-Distribution", "Normal Distribution"), col = c("red", "blue"), lwd = 2)  # Add legend

# Q-Q plot: Compare simulated t-distribution to the theoretical t-distribution
qqplot(qt(ppoints(N_sim), df = n - 1), t_data, main = "Q-Q Plot", col = "red")
abline(0, 1, col = "blue", lwd = 2)  # Add 45-degree reference line indicating perfect fit





# lab Explanation

# 1. Theoretical Explanation
# What is the t-distribution?
# The t-distribution (Student’s t-distribution) is a probability distribution used when estimating the mean of a normally distributed population when the sample size is small.
# It has heavier tails than the normal distribution, meaning it is more prone to extreme values.
# The shape of the t-distribution depends on the degrees of freedom (df), which is calculated as df = n - 1, where n is the sample size.

# What is the Normal Distribution?
# The normal distribution (Gaussian distribution) is a bell-shaped curve that is symmetric around the mean.
# It is used when the sample size is large (Central Limit Theorem states that sample means tend to follow a normal distribution).
# It has thinner tails compared to the t-distribution.

# Why Compare These Distributions?
# The t-distribution approaches the normal distribution as sample size increases.
# This comparison helps to understand when you can use the normal approximation for small sample sizes.

# 2. Explanation of Each Function
# (1) set.seed(123)
# Purpose: Ensures that the random numbers generated remain the same each time the script is run (reproducibility).
# How it works: The seed value (123) fixes the random number generator.

# (2) n <- 10, N_sim <- 1000
# n <- 10 → Sets the sample size for the t-distribution.
# N_sim <- 1000 → Number of random samples (simulations) generated.

# (3) Generating Random Data
# t_data <- rt(N_sim, df = n - 1)  # t-distribution data
# normal_data <- rnorm(N_sim)  # Normal distribution data
# rt(N_sim, df = n - 1)
# Generates 1000 random samples from a t-distribution with df = 9 (since n - 1 = 10 - 1).
# rnorm(N_sim)
# Generates 1000 random samples from a standard normal distribution (mean = 0, SD = 1).

# (4) Arranging Multiple Plots
# par(mfrow = c(2, 2))
# Purpose: Arranges four plots in a 2×2 grid for better visualization.

# (5) Histogram of the t-Distribution
# hist(t_data, probability = TRUE, col = "lightblue", main = "t-Distribution", border = "white")
# curve(dt(x, df = n - 1), add = TRUE, col = "red", lwd = 2)
# hist()
# Plots a histogram of t_data (the t-distribution).
# probability = TRUE ensures that the area under the histogram sums to 1.
# col = "lightblue" colors the bars blue.
# curve(dt(x, df = n - 1), add = TRUE, col = "red", lwd = 2)
# Overlays the theoretical t-distribution curve in red.
# dt(x, df = n - 1) calculates the probability density function (PDF) of the t-distribution.

# (6) Histogram of the Normal Distribution

# hist(normal_data, probability = TRUE, col = "lightgreen", main = "Normal Distribution", border = "white")
# curve(dnorm(x), add = TRUE, col = "blue", lwd = 2)
# Similar to the t-distribution histogram but for normal data.
# curve(dnorm(x), add = TRUE, col = "blue", lwd = 2)
# Overlays the theoretical normal distribution curve in blue

# (7) Density Comparison Plot
# plot(density(t_data), col = "red", lwd = 2, main = "Density Comparison")
# lines(density(normal_data), col = "blue", lwd = 2)
# legend("topright", legend = c("t-Distribution", "Normal Distribution"), col = c("red", "blue"), lwd = 2)
# plot(density(t_data))
# Plots the kernel density estimate (KDE) for the t-distribution in red.
# lines(density(normal_data))
# Adds the density curve for the normal distribution in blue.
# Legend
# Adds a legend to distinguish the two distributions.

# (8) Q-Q Plot (Quantile-Quantile Plot)
# qqplot(qt(ppoints(N_sim), df = n - 1), t_data, main = "Q-Q Plot", col = "red")
# abline(0, 1, col = "blue", lwd = 2)
# Purpose: Checks if the simulated t_data follows the expected t-distribution.
# qt(ppoints(N_sim), df = n - 1)
# Computes theoretical quantiles of a t-distribution.
# qqplot()
# Plots the theoretical t-distribution quantiles against the sample quantiles.
# abline(0, 1, col = "blue", lwd = 2)
# Adds a 45-degree reference line to check if the points