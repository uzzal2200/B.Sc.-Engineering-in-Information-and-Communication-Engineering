# Lab 12: Best Critical Region for Simple vs. Composite Hypotheses
set.seed(123)

# Parameters
mu0 <- 5; mu1 <- 6; sigma <- 2; n <- 30; alpha <- 0.05

# Generate sample data
sample_H0 <- rnorm(n, mean = mu0, sd = sigma)
sample_H1 <- rnorm(n, mean = mu1, sd = sigma)

# Critical value & decisions
critical_value <- qnorm(1 - alpha, mean = mu0, sd = sigma / sqrt(n))
decision_H0 <- mean(sample_H0) > critical_value
decision_H1 <- mean(sample_H1) > critical_value

# Output results
print(paste("Critical Value:", critical_value))
print(paste("Decision under H0:", decision_H0))
print(paste("Decision under H1:", decision_H1))

# Density plots
par(mfrow = c(1, 2))
plot(density(sample_H0), col = "blue", lwd = 2, main = "Density under H0")
abline(v = critical_value, col = "red", lty = 2)
plot(density(sample_H1), col = "green", lwd = 2, main = "Density under H1")
abline(v = critical_value, col = "red", lty = 2)
