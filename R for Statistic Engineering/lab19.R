# Lab 19: Conduct Non-Parametric Tests
 # Set seed for reproducibility
set.seed(123)

# Generate sample data for two groups
group1 <- rnorm(20, mean = 5, sd = 2)  # Group 1: Mean = 5, SD = 2
group2 <- rnorm(20, mean = 7, sd = 2)  # Group 2: Mean = 7, SD = 2

# Perform Wilcoxon rank-sum test (Mann-Whitney U test)
wilcox_test_result <- wilcox.test(group1, group2)

# Print the test result
print(wilcox_test_result)

# Set graphical layout to show two plots side by side
par(mfrow = c(1, 2))

# Boxplot of both groups
boxplot(list(group1, group2),col = c("lightblue", "lightgreen"),main = "Boxplot of Groups",xlab = "Group",ylab = "Value")

# Density plots of both groups
plot(density(group1),col = "blue",lwd = 2, main = "Density Plots",xlab = "Value",
     ylim = c(0, 0.25))

# Add density plot for Group 2
lines(density(group2), col = "green", lwd = 2)

# Add legend to distinguish groups
legend("topright",legend = c("Group 1", "Group 2"),col = c("blue", "green"), lwd = 2)

