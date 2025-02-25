
# Parameters
k <- 5
N_sim <- 1000

# Generate chi-squared data
set.seed(123)
chi2_data <- rchisq(N_sim, df = k)

# Compute mean and variance
mean_chi2 <- mean(chi2_data)
var_chi2 <- var(chi2_data)
print(paste("Mean:", mean_chi2))
print(paste("Variance:", var_chi2))

# Graphical Output
par(mfrow = c(1, 3))

# Easy Histogram
hist(chi2_data, breaks = 30, col = "skyblue", main = "Chi-Squared Distribution", xlab = "Value", border = "white", probability = TRUE)
lines(density(chi2_data), col = "red", lwd = 2)

# Density plot
plot(density(chi2_data), col = "blue", lwd = 2, main = "Density Plot", xlab = "Value")
curve(dchisq(x, df = k), add = TRUE, col = "red", lwd = 2)

# Q-Q plot
qqplot(qchisq(ppoints(N_sim), df = k), chi2_data, main = "Q-Q Plot", col = "blue", xlab = "Theoretical Quantiles", ylab = "Sample Quantiles")
abline(0, 1, col = "red", lwd = 2)




# lab Explanation

# k=5 (degrees of freedom)
# N_sim=1000 (number of simulations)

# set.seed(123): Ensures reproducibility.
# rchisq(N_sim, df = k): Generates 1000 random numbers from a Chi-Square distribution with 5 degrees of freedom.

# Computes the empirical mean and variance of the generated Chi-Square samples.
# The theoretical values are:
# E[X]=k=5,Var(X)=2k=10
# The computed values should be close to these theoretical

# rranges plots in one row with three columns


# Histogram of simulated Chi-Square data.
# probability = TRUE scales the histogram as a density.
# curve(dchisq(x, df = k)) overlays the theoretical Chi-Square PDF (red curve) on the histogram

# density(chi2_data): Computes the empirical density function.
# Overlays the theoretical PDF in red for compariso


# Compares the sample quantiles of the simulated data with the theoretical quantiles of a Chi-Square distribution.
# abline(0,1): Draws a reference line (red). If the points fall near this line, it indicates that the data follows a Chi-Square distribution.

# 4. Interpretation of Results
# Mean & Variance Check
# The empirical mean and variance should be close to the theoretical values:
# E[X]=5,Var(X)=10
# Histogram vs. Theoretical Distribution

# The histogram should align with the theoretical Chi-Square PDF.
# Density Plot

# The empirical density function should match the theoretical Chi-Square distribution.
# Q-Q Plot

# If the points lie along the red line, it confirms that the simulated data follows a Chi-Square distribution.



