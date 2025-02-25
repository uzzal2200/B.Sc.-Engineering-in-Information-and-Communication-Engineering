 Lab 18: Analyze Three-Way Contingency Tables Using Log-Linear Models
 # Create a three-way contingency table
 data <- array(c(10, 5, 2, 8, 3, 6, 4, 7), dim = c(2, 2, 2))
 dimnames(data) <- list(Gender = c("Male", "Female"), Treatment = c("Yes", "No"), Outcome = c("Success", "Failure"))
 # Fit a log-linear model
 log_linear_model <- loglin(data, margin = list(c(1, 2, 3)), fit = TRUE, param = TRUE)
 # Output
 print(data)
 print(log_linear_model)
 # Graphical Output
 par(mfrow = c(1, 2))
 # Heatmap of the three-way table
 heatmap(data, main = "Heatmap of Three-Way Table", col = heat.colors(100))
 # Interaction plot
 interaction.plot(data[, , 1], data[, , 2], data[, , 3], main = "Interaction Plot", xlab = "Gender", ylab = "Outcome", trace.l