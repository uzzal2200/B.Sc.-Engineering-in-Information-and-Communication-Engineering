set.seed(123)  # Set seed for reproducibility

df1 <- 5  # Degrees of freedom for the numerator
df2 <- 10  # Degrees of freedom for the denominator
N_sim <- 1000  # Number of simulations

# Generate F-distributed data using chi-square distributions
f_data <- (rchisq(N_sim, df1) / df1) / (rchisq(N_sim, df2) / df2)

par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid for visualization

# 1. Histogram of the F-distribution
hist(f_data,
     breaks = 30,  # Number of bins
     col = "lightblue",  # Color of bars
     probability = TRUE,  # Normalize histogram to match probability density
     main = "F-Distribution",
     xlab = "Value",  # X-axis label
     border = "white")  # Border color for bars

# Overlay the theoretical F-distribution
curve(df(x, df1, df2),
      from = min(f_data), to = max(f_data),  # Range of x-values
      add = TRUE,  # Add to existing plot
      col = "red",  # Color of the curve
      lwd = 2)  # Line width

# 2. Density plot of the simulated F-distribution
plot(density(f_data),
     col = "blue",  # Density line color
     lwd = 2,  # Line width
     main = "Density Plot",  # Title
     xlab = "Value")  # X-axis label

# Overlay the theoretical F-distribution again
curve(df(x, df1, df2),from = min(f_data), to = max(f_data),add = TRUE,col = "red", lwd = 2)

# 3. Q-Q plot to compare simulated and theoretical quantiles
qqplot(qf(ppoints(N_sim), df1, df2),  # Theoretical quantiles
       f_data,  # Sample data
       main = "Q-Q Plot for F-Distribution",  # Title
       col = "blue",  # Color of points
       xlab = "Theoretical Quantiles",  # X-axis label
       ylab = "Sample Quantiles")  # Y-axis label

abline(0, 1, col = "red", lwd = 2)  # Add reference line (y = x)

# 4. Boxplot to show data distribution and outliers
boxplot(f_data,
        col = "lightgreen",  # Box color
        main = "Boxplot of F-Distributed Data",  # Title
        ylab = "Value")  # Y-axis label
