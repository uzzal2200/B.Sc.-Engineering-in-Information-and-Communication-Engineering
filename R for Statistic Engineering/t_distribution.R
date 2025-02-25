# Degrees of freedom
df <- 15

# (a) Find t1 such that the area to the right of t1 is 0.01
t1_a <- qt(0.01, df = df, lower.tail = FALSE)
cat("(a) t1 where area to the right is 0.01:", t1_a, "\n")

# (b) Find t1 such that the area to the left of t1 is 0.95
t1_b <- qt(0.95, df = df, lower.tail = TRUE)
cat("(b) t1 where area to the left is 0.95:", t1_b, "\n")

# (c) Find t1 such that the area to the right of t1 is 0.10
t1_c <- qt(0.10, df = df, lower.tail = FALSE)
cat("(c) t1 where area to the right is 0.10:", t1_c, "\n")

# (d) Find t1 where the combined area to the right of t1 and to the left of -t1 is 0.01
# Since the combined area is symmetric, the area to the right of t1 is 0.005
t1_d <- qt(0.005, df = df, lower.tail = FALSE)
cat("(d) t1 where combined area to the right of t1 and to the left of -t1 is 0.01:", t1_d, "\n")

# (e) Find t1 where the area between -t1 and t1 is 0.95
# This corresponds to the central 95% of the t-distribution
t1_e <- qt(0.975, df = df, lower.tail = TRUE)  # For the upper bound
cat("(e) t1 where area between -t1 and t1 is 0.95:", t1_e, "\n")
cat("     -t1:", -t1_e, ", +t1:", t1_e, "\n")



# Degrees of freedom
# df <- 15  # Set degrees of freedom

# # Example 1: Density at x = 1
# x <- 1
# density <- dt(x, df)

# # Example 2: Cumulative probability for x = 1
# cumulative_prob <- pt(x, df)

# # Example 3: Quantile for a probability of 0.95
# t <- 0.95
# quantile <- qt(t, df)

# # Corrected print statement
# cat("Critical t =", t, "with df =", df, ":", qua  ntile, "\n")