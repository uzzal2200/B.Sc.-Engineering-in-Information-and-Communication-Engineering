# Parameters
mu <- 5
sigma <- 2
n <- 30
N_sim <- 1000

# Generate sample data
set.seed(123)
sample_data <- rnorm(n, mean = mu, sd = sigma)

# Point estimates
sample_mean <- mean(sample_data)
sample_var <- var(sample_data)

# Confidence intervals
conf_int_mean <- t.test(sample_data)$conf.int
conf_int_var <- c((n-1)*sample_var / qchisq(0.975, df = n-1),
                  (n-1)*sample_var / qchisq(0.025, df = n-1))

# Output
print(paste("Sample Mean:", sample_mean))
print(paste("Sample Variance:", sample_var))
print(paste("95% CI for Mean:", paste(conf_int_mean, collapse = " to ")))
print(paste("95% CI for Variance:", paste(conf_int_var, collapse = " to ")))

# Graphical Output
par(mfrow = c(1, 2))

# Histogram with mean and CI
hist(sample_data, breaks = 30, col = "lightblue", main = "Sample Data with Mean", xlab = "Value", border = "black")
abline(v = sample_mean, col = "red", lwd = 2)
abline(v = conf_int_mean[1], col = "blue", lty = 2)
abline(v = conf_int_mean[2], col = "blue", lty = 2)

# Boxplot
boxplot(sample_data, col = "lightgreen", main = "Boxplot of Sample Data", ylab = "Value")


# Explanation of this code

# Here, mu and sigma represent the population mean and standard deviation.
# n = 30 means we are drawing a sample of 30 data points.
# N_sim is declared but not used in this script.


# set.seed(123): Ensures that the random numbers generated are reproducible.
# rnorm(n, mean = mu, sd = sigma): Generates n random numbers from a normal distribution with the specified mean (mu) and standard deviation (sigma).

# The sample mean (sample_mean) is an estimate of the population mean (mu).
# The sample variance (sample_var) is an estimate of the population variance (sigma^2).


# t-test for mean confidence interval:
# t.test(sample_data)$conf.int computes a 95% confidence interval (CI) for the sample mean using a t-distribution (since the sample size is small).
# The result is a vector containing the lower and upper bounds of the confidence interval.


# The chi-square distribution is used to compute a 95% CI for variance.
# qchisq(0.975, df = n-1): Upper chi-square critical value.
# qchisq(0.025, df = n-1): Lower chi-square critical value


# Displays the sample mean and sample variance.
# Prints the 95% confidence intervals for both the mean and variance.
# paste(..., collapse = " to ") formats the confidence interval for readability.


# Histogram of the sample data.
# breaks = 30: Defines the number of bins in the histogram.
# col = "lightblue": Fills the bars with light blue color.
# border = "black": Sets the border color for the bars


# abline(v = sample_mean, col = "red", lwd = 2):
# Adds a red vertical line at the sample mean.
# abline(v = conf_int_mean[1], col = "blue", lty = 2):
# Adds a blue dashed line at the lower bound of the confidence interval.
# abline(v = conf_int_mean[2], col = "blue", lty = 2):
# Adds a blue dashed line at the upper bound of the confidence interval


# Boxplot of the sample data.
# col = "lightgreen": Colors the boxplot in light green.
# ylab = "Value": Labels the y-axis as "Value".