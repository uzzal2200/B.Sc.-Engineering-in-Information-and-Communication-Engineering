# Lab 14: Perform Hypothesis Testing Step-by-Step Using Simulated Data

# Define parameters
mu0 <- 5      # Null hypothesis mean
mu1 <- 6      # True population mean
sigma <- 2    # Population standard deviation
n <- 30       # Sample size
alpha <- 0.05 # Significance level

# Generate sample data
set.seed(123)
sample_data <- rnorm(n, mean = mu1, sd = sigma)

# Step 1: State hypotheses
print("H0: mu = 5")  # Null hypothesis
print("H1: mu > 5")  # Alternative hypothesis (one-tailed test)

# Step 2: Choose significance level
print(paste("Significance level (alpha):", alpha))

# Step 3: Calculate test statistic (t-value)
t_stat <- (mean(sample_data) - mu0) / (sd(sample_data) / sqrt(n))
print(paste("Test Statistic (t):", t_stat))

# Step 4: Determine critical value and p-value
critical_value <- qt(1 - alpha, df = n-1)  # Critical t-value for one-tailed test
p_value <- pt(t_stat, df = n-1, lower.tail = FALSE)  # p-value for one-tailed test

print(paste("Critical Value:", critical_value))
print(paste("P-value:", p_value))

# Step 5: Make a decision based on t-statistic and critical value
decision <- ifelse(t_stat > critical_value, "Reject H0", "Fail to reject H0")
print(paste("Decision:", decision))

# Graphical Output
par(mfrow = c(1, 2))  # Split plotting area into two sections

# Histogram of sample data
hist(sample_data,breaks = 30,col = "lightblue",main = "Sample Data",xlab = "Value",border = "white")

# Add reference lines for null hypothesis mean and sample mean
abline(v = mu0, col = "red", lwd = 2)  # Null hypothesis mean
abline(v = mean(sample_data), col = "blue", lwd = 2)  # Sample mean

# Density plot of sample data
plot(density(sample_data),col = "blue",lwd = 2,main = "Density Plot", xlab = "Value")

# Add a vertical line for the critical value
abline(v = critical_value, col = "red", lty = 2)  # Critical region boundary
