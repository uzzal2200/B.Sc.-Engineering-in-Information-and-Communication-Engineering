Lab 16: Apply Bartlett's Test to Compare Variances Across Multiple Groups
 # Generate sample data for three groups
 set.seed(123)
 group1 <- rnorm(30, mean = 5, sd = 2)
 group2 <- rnorm(30, mean = 5, sd = 3)
 group3 <- rnorm(30, mean = 5, sd = 4)
 # Combine data into a list
 data_list <- list(group1, group2, group3)
 # Perform Bartlett's test
 bartlett_test_result <- bartlett.test(data_list)
 # Output
 print(bartlett_test_result)
 # Graphical Output
 par(mfrow = c(1, 2))
 # Boxplot of groups
 boxplot(data_list, col = c("lightblue", "lightgreen", "lightcoral"), main = "Boxplot of Groups", xlab = "Group", ylab = "Value")
 # Density plots of groups
 plot(density(group1), col = "blue", lwd = 2, main = "Density Plots", xlab = "Value", ylim = c(0, 0.25))
 lines(density(group2), col = "green", lwd = 2)
 lines(density(group3), col = "red", lwd = 2)
 legend("topright", legend = c("Group 1", "Group 2", "Group 3"), col = c("blue", "green", "red"), lwd = 2