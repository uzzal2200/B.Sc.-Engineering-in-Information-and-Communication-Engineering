#  Lab 10: Derive MLEs for Binomial, Poisson, and Normal Distributions

# --- BINOMIAL DISTRIBUTION ---

# Number of trials for each binomial experiment
n_binom <- 20

# True probability of success (used to generate data)
p_true <- 0.6

# Generate 100 random samples from a Binomial(n=20, p=0.6) distribution
data_binom <- rbinom(100, size = n_binom, prob = p_true)

# Maximum Likelihood Estimator (MLE) for Binomial probability parameter (p)
# MLE of p for Binomial(n, p) is: p̂ = (sum of successes) / (total trials)
p_mle <- mean(data_binom) / n_binom

# --- POISSON DISTRIBUTION ---

# True Poisson rate (λ) used for generating data
lambda_true <- 3

# Generate 100 random samples from a Poisson(λ=3) distribution
data_pois <- rpois(100, lambda = lambda_true)

# MLE for Poisson parameter λ
# MLE of λ for Poisson(λ) is: λ̂ = mean of observed values
lambda_mle <- mean(data_pois)

# --- NORMAL DISTRIBUTION ---

# True mean (µ) and standard deviation (σ) of the normal distribution
mu_true <- 5
sigma_true <- 2

# Generate 100 random samples from a Normal(µ=5, σ=2) distribution
data_norm <- rnorm(100, mean = mu_true, sd = sigma_true)

# MLE for mean (µ) of normal distribution
# MLE of µ for Normal(µ, σ²) is: µ̂ = sample mean
mu_mle <- mean(data_norm)

# MLE for standard deviation (σ) of normal distribution
# MLE of σ for Normal(µ, σ²) is: σ̂ = sqrt(sample variance)
sigma_mle <- sqrt(mean((data_norm - mu_mle)^2))

# --- OUTPUT ---

# Print the estimated MLE values for each distribution
print(paste("Binomial MLE for p:", p_mle))
print(paste("Poisson MLE for lambda:", lambda_mle))
print(paste("Normal MLE for mu:", mu_mle))
print(paste("Normal MLE for sigma:", sigma_mle))
