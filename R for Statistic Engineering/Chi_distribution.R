# # Observed data matrix
# data <- matrix(c(100, 70, 30,
#                  140, 60, 20), 
#                nrow = 2, byrow = TRUE)

# # Chi-square test
# result <- chisq.test(data)

# # Print the result
# print(result)

# # Step 1: Create the observed data matrix
observed <- matrix(c(100, 70, 30,
                     140, 60, 20), 
                   nrow = 2, byrow = TRUE)

# Step 2: Calculate row totals, column totals, and grand total
row_totals <- rowSums(observed)
col_totals <- colSums(observed)
grand_total <- sum(observed)

# Step 3: Calculate the expected values
expected <- outer(row_totals, col_totals) / grand_total

# Step 4: Manually calculate the Chi-square statistic
chi_square_manual <- sum((observed - expected)^2 / expected)

# Step 5: Verify using R's built-in chisq.test function
result <- chisq.test(observed)

# Step 6: Print the results
cat("Theoretical Chi-square value (X^2):", chi_square_manual, "\n")
cat("Built-in Chi-square value (X^2):", result$statistic, "\n")
cat("Degrees of Freedom (df):", result$parameter, "\n")
