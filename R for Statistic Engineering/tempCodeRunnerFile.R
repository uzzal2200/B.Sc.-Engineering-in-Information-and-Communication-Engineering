
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