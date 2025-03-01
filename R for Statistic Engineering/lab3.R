# Lab 3: Comparison of t-Distribution with Normal Distribution for Small Sample Sizes

# Parameters
n <- 10
N_sim <- 1000
set.seed(123)

# Generate data
t_data <- rt(N_sim, df = n-1)
normal_data <- rnorm(N_sim)

# Graphical Output
par(mfrow = c(2, 2))

# Histogram of t-distribution
hist(t_data, probability = TRUE, col = "lightblue", main = "t-Distribution", border = "white")
curve(dt(x, df = n-1), add = TRUE, col = "red", lwd = 2)

# Histogram of normal distribution
hist(normal_data, probability = TRUE, col = "lightgreen", main = "Normal Distribution", border = "white")
curve(dnorm(x), add = TRUE, col = "blue", lwd = 2)

# Density plot comparison
plot(density(t_data), col = "red", lwd = 2, main = "Density Comparison")
lines(density(normal_data), col = "blue", lwd = 2)
legend("topright", legend = c("t-Distribution", "Normal Distribution"), col = c("red", "blue"), lwd = 2)

# Q-Q plot for t-distribution
qqplot(qt(ppoints(N_sim), df = n-1), t_data, main = "Q-Q Plot", col = "red")
abline(0, 1, col = "blue", lwd = 2)




# lab Explanation

# n=10: Sample size.
# N_sim =1000: Number of simulated values.

# set.seed(123): Ensures reproducibility.
# rt(N_sim, df = n-1): Generates 1000 random numbers from a t-distribution with 9 degrees of freedom (n-1=9)
# rnorm(N_sim): Generates 1000 random numbers from a standard normal distribution (N(0,1))


# hist(t_data, probability = TRUE): Plots the density histogram of the t-distribution.
# curve(dt(x, df = n-1)): Overlays the theoretical t-Distribution
# hist(t_data, probability = TRUE):
# Plots a density histogram instead of a frequency histogram.
# The y-axis represents probability density rather than counts.
# breaks = 30: Divides the data range into 30 bins.
# col = "lightblue": Fills bars with light blue color.
# main = "t-Distribution": Sets title of the plot.
# xlab = "Value": Labels x-axis.
# border = "white": Sets bin border color to white



# Plots histogram of normal distribution.
# dnorm(x): Overlays the theoretical normal curve.

# density(t_data): Computes the smoothed empirical density of the t-distribution.
# density(normal_data): Computes the smoothed empirical density of the normal distribution.
# The legend differentiates between the t-distribution (red) and normal distribution (blue)

# qt(ppoints(N_sim), df = n-1): Computes theoretical quantiles from the t-distribution.
# qqplot(): Compares theoretical quantiles to empirical quantiles.
# abline(0,1): Draws a reference line; if data follows the theoretical distribution, points should align with this line