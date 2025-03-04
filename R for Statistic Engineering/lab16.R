# Lab 16: Apply Bartlett's Test to Compare Variances Across Multiple Groups
 # Generate sample data for three groups
# Set seed for reproducibility
set.seed(123)

# Generate sample data for three groups with the same mean but different standard deviations
group1 <- rnorm(30, mean = 5, sd = 2)  # Group 1: Mean = 5, SD = 2
group2 <- rnorm(30, mean = 5, sd = 3)  # Group 2: Mean = 5, SD = 3
group3 <- rnorm(30, mean = 5, sd = 4)  # Group 3: Mean = 5, SD = 4

# Combine data into a list for Bartlett's test
data_list <- list(group1, group2, group3)

# Perform Bartlett's test for homogeneity of variances
bartlett_test_result <- bartlett.test(data_list)

# Print the test result
print(bartlett_test_result)

# Set graphical layout to display two plots side by side
par(mfrow = c(1, 2))

# Boxplot of the three groups
boxplot(data_list,col = c("lightblue", "lightgreen", "lightcoral"),main = "Boxplot of Groups",xlab = "Group",ylab = "Value")

# Density plots of the three groups
plot(density(group1),col = "blue",lwd = 2,main = "Density Plots",xlab = "Value",ylim = c(0, 0.25))

# Add density plots for the other two groups
lines(density(group2), col = "green", lwd = 2)
lines(density(group3), col = "red", lwd = 2)

# Add a legend to differentiate the groups
legend("topright",legend = c("Group 1", "Group 2", "Group 3"),col = c("blue", "green", "red"),lwd = 2)
