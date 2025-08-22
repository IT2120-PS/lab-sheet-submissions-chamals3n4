#Q1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
print(head(branch_data))

#Q2
str(branch_data)
# Interpretation:
# Branch: Numeric/ID - Nominal scale (categorical identifiers)
# Sales_X1: Numeric - Ratio scale (continuous, meaningful zero)
# Advertising_X2: Numeric - Ratio scale
# Years_X3: Numeric/Integer - Ratio scale

#Q3
boxplot(branch_data$Sales_X1, main = "Boxplot of Sales", ylab = "Sales", 
        outline = TRUE, outpch = 8, horizontal = TRUE)

#Q4
summary(branch_data$Advertising_X2)
iqr_advertising <- IQR(branch_data$Advertising_X2)
cat("IQR for Advertising:", iqr_advertising, "\n")

#Q5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)
  Q3 <- quantile(x, 0.75, na.rm = TRUE)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$Years_X3)
print("Outliers in Years:")
print(outliers_years)
