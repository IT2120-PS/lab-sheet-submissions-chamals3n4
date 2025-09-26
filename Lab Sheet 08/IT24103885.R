setwd("C:\\Users\\it24103885\\Desktop\\IT24103885")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)
popmn <- mean(Weight.kg.)
popvar <- var(Weight.kg.)
print(popmn)
print(popvar)

samples <- c()
n <- c()
for(i in 1:25) {
  s <- sample(Weight.kg., 5, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('s', i))
}

colnames(samples) = n
s.means <- apply(samples, 2, mean)
s.sd <- apply(samples, 2, sd)
print(s.means)
print(s.sd)

samplemean<-mean(s.means)
samplesd<-sd(s.means)
samplemean
samplesd

popsd<-sd(Weight.kg.)
popsd

se<-popsd/sqrt(5)
se
popsd
samplesd
popmn
samplemean
