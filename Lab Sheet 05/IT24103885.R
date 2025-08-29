setwd("C:\\Users\\User\\Desktop\\IT24103885")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
head(Delivery_Times)


delivery_data <- Delivery_Times$Delivery_Time_.minutes.

hist(delivery_data, 
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,  
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")


mean(delivery_data)
median(delivery_data)


h <- hist(delivery_data, 
          breaks = seq(20, 70, length.out = 10), 
          right = FALSE, 
          plot = FALSE)

cumfreq <- cumsum(h$counts)
plot(h$breaks[-1], cumfreq, 
     type = "o", 
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")


data.frame(
  Class_Interval = paste(h$breaks[-10], h$breaks[-1], sep = "-"),
  Frequency = h$counts,
  Cumulative_Frequency = cumfreq
)