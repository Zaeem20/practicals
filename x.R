library(moments)

# Karl Pearson's Measure of skewness
blood.sugar <- c(11,12,45,81,65,98,75,23,62,45)

meann <- mean(blood.sugar)
mediann <- median(blood.sugar)
meann
mediann

sk <- 3*(meann-mediann)/sd(blood.sugar)  #Karl pearson's measure of sk'
sk

# Bowely measure of skewness

x_neg <- c(10, 11, 21, 22, 23, 25)
x_post <- c(40, 41, 42, 43, 50)


post  <- png(file='positiveskewness.png')
skewness(x_post)
hist(x_post, main="Positive Skewness")  # positive skewness
dev.off()

negt <- png(file="negetiveskewness.png")
skewness(x_neg)
hist(x_neg, main = "Negative Skewness")  # negative skewness

dev.off()



# moments coefficients of skewness

# Defining normally distributed data vector
x <- rnorm(50, 10, 10)

# output to be present as PNG file
png(file = "zeroskewness.png")

# Print skewness of distribution
print(skewness(x))

# Histogram of distribution
hist(x, main="Zero Skewness histogram")

# Saving the file
dev.off()


