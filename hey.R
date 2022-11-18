# This code is Solely Belongs To Zaeem Durani, No changes is Accepted...
library(moments)  # initializing libraries

"Basic of R"

a <- 12 # this is a variable with value 12 
b <- 24 # this is a variable with value 24
"This is a variables value"
a
b


print("Arithmetic Operators")

a + b # this will print sum of a and b = 36
a - b # this will print subtraction of a and b = 12
a * b # this will print the multiplication of a and b = 288
a ^ b # this will print the power of a & b = 12^24 = 7.949685e+25
a / b    # this will divides a by b 
24 %% 2  # this will returns the remainder of a division
a %/% b  # this will divides and roundoff the output to downwards


"Vectors and Matrix"

vector_a = c(1,2,3,4,5,6)   # this will create a vector
vector_a   # printing vector

matrix_b = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol=3, byrow=TRUE)
matrix_b   # printing Matrix

"Data frames in R"
test_data <- data.frame(
  "Name" = c("Zaeem", "Moosa", "Safdar"),
  "Age"= c(17,17,22),
  "Hobbies" = c("Coding", "Cricket", "Trading"),
  "Reside in" = c("Mumbra","Marine","Mumbra")
  
)  # creating a Data Frame

test_data # printing a Data Frame

test_data$Name   # Accessing by its key

# diagram and graphs in R

pie = pie(c(71,29),c("71%","29%"), col=c("cyan", 'brown'), main="Distribution of Land and Water")  # creating a pie chart

city = c("Mumbai", "Bhiwandi", "Thane", "Mumbra", "Ratnagiri")
rainfalls = c(100, 200, 150, 120, 300)
png(file="rainfall_2.png")  # creating a PNG file object
png(file='zaeem_histogram_.png')
png(file="zaeem_plot.png")
barplot(rainfalls, names.arg=city, xlab="Cities", ylab="Rainfall in CMs", main="Rainfall Data 2022")
hist(c(10,20,30,45,55,60,40,55,65,72,84,96), xlab='Annual Sales of Car', ylab='Number of cars',breaks=5, border='black', main="Annual Report of Car Sales")
plot(c(10,15,24,32,42,48,55,60), c(10,20,30,40,50,60,70,80), xlab='Days', ylab = 'Temperature')

input<-mtcars[,c('wt','mpg')]
png(file="scatterplot.png")
#plot the chart for cars with weight between 
#2.5 to 5 and milage between 15 and 30 
plot (x=input$wt, y=input$mpg,
      xlab="weight",
      ylab="milage",
      xlim=c(2.5,5),
      ylim=c(15,30),
      main="weight vs milage")


dev.off()  # turing off the list of devices


# built in functions in R

y <- 54.5
y
paste("After Flooring:", floor(y))
paste("After Ceiling:", ceiling(y))
raw_data = c(24,15,35,89,32,16,54)
raw_data
maximum = max(raw_data)
minimum = min(raw_data)
paste("Maximum in Raw data is :", maximum)
paste("Minimum in Raw_data is :", minimum)

"Measure of Central Tendency"

data <- c(12,18,24,70,35,70,28,50,62,65,70)

paste("Arithmetic Mean: ", mean(data))
paste("Median of Data; ",median(data))

calculate_mode <- function(dataset){
  result = unique(data)[which.max(tabulate(match(dataset, unique(data))))]
}

paste("Mode of the given Data is:", calculate_mode(data))

"Measure of Dispersion"

dataset = c(42,15,65,98,35,62,79,80,10)
summary(dataset)
'Range is in between'
range(dataset)
cr = (max(dataset)+min(dataset))/(max(dataset)+min(dataset))
paste("Coefficent of Range", cr)
paste("Varience of dataset", var(dataset))
paste("Standard Deviation of Dataset:",sd(dataset))
cv<-sd(dataset)/mean(dataset)*100
paste("Coefficent of Variance", cv)
quantile(dataset, probs=c(0.25,0.5,0.75,1))


"Moments "
new_data<-c(26,21,24,22,25,24,23)
print(new_data)
#raw moments
raw.mom<-all.moments(new_data,order.max=4)
raw.mom
cent.mom<-all.moments(new_data,order.max=4)
cent.mom<-all.moments(new_data,order.max=4,central =TRUE)
cent.mom

#Converting Raw to Central moments
raw2cent<-raw2central(raw.mom)
print(raw2cent)
#Converting central to raw moments
eta<-mean(new_data)
print(eta)
cent2raw<-central2raw(cent.mom,eta=eta)
print(cent2raw)

