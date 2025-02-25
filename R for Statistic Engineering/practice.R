k = 5
n_sim = 1000 # number of simulations

# generate chi_square data
set.seed(123)
chi2_data = rchisq(n_sim, df=k)


# Compute mean and variance

mean_chi2 = mean(chi2_data)
var_chi2 = var(chi2_data)

cat("Mean:", mean_chi2, "\n")
cat("Variance", var_chi2, "\n")

par(mfrwo=c(1,3))

#Histogram
hist(chi2_data, breaks=30, col="skyblue", probability=TRUE, main="Chi_Squared Histogram", xlab="Value", border = "white")

lines(density(chi2_data), col="red", lwd=2)


# Density Plot

plot(density(chi2_data), col="blue", lwd=2, main="Density Plot", xlab="Value")

curve(dchisq(x, df=k), add=TRUE, col="red", lwd=2)

#Q_Q Plot
qqplot(qchisq(ppoints(n_sim), chi2_data, main="Q-Q Plot", col="blue", xlab="Theorictical Quantiles", ylab="Sample Quantiles"))

abline(0,1, col="red", lwd=2)

