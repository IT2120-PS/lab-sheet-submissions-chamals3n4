setwd("C:\\Users\\User\\Desktop\\IT24103885\\LabSheet09")

# exercise 1: 

# part i - generate random sample
# to generate random numbers from a normal distribution, we can use "rnorm" command as follows.
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

# part ii - hypothesis testing
t.test(baking_time, mu = 46, alternative = "less")
