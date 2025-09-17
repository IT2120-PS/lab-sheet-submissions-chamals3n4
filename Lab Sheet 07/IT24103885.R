setwd("C:\\Users\\User\\Desktop\\IT24103885")

# Exercise 01
# distribution: min = 0, max = 40
min <- 0
max <- 40

p <- punif(25, min, max) - punif(10, min, max)
p


# Exercise 02
# expo distribution: lambda = 1/3
lambda <- 1/3

# P(X <= 2)
p <- pexp(2, rate = lambda)
p


# Exercise 03

# part 01

mu <- 100
sigma <- 15

p1 <- 1 - pnorm(130, mean = mu, sd = sigma)
p1


# part 02
# 95th percentile (quantile)
q <- qnorm(0.95, mean = mu, sd = sigma)
q



