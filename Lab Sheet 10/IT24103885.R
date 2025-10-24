setwd("E:\\SLIIT\\Y2S1\\PS\\LABS\\Lab10\\IT24103885")

observed <- c(120, 95, 85, 100)

prob <- c(0.25, 0.25, 0.25, 0.25)

result <- chisq.test(x = observed, p = prob)

print(result)
