set.seed(123)

group1 = rnorm(30, mean=5, sd=2)
group2 = rnorm(30, mean=5, sd=3)
group3 = rnorm(30, mean=5, sd=4)

data_list = c(group1, group2, group3)

bartlett_test_result <- bartlett.test(list(group1, group2, group3))

print(bartlett_test_result)

boxplot(list(group1, group2, group3), col=c("lightblue", "lightgreen", "lightcoral"),
        main="Box plot of Groups", xlab="Group", ylab="Value")

plot(density(group1), col="blue", lwd=2, main="Density Plot", xlab="Value", ylim=c(0, 0.25))
lines(density(group2), col="green", lwd=2)
lines(density(group3), col="red", lwd=2)

legend("topright", legend=c("group1", "group2", "group3"), col=c("blue", "green", "red"), lwd=2)
