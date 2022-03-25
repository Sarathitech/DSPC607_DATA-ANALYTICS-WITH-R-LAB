# Ex4a Write a R to compute Interquartile Range (IQR) for a given data

xdata = c(5,10,12,15,20,25,27,30,35)

# Compute Minimum, First, Second or Median, Third and Maximum Quartiles
MinQ= quantile(xdata,0)
FQ = quantile(xdata,0.25)
SQ = quantile(xdata,0.5)
TQ = quantile(xdata,0.75)
MaxQ= quantile(xdata,1)

# Print the Quartile One by One
cat("Minimum=",MinQ)
cat("Lower Quartile=",FQ)
cat("Median=",SQ)
cat("Upper Quartile=",TQ)
cat("Maximum=",MaxQ)

# Compute All the Quartiles (Min,First, Second or Median, Third and Max Quartiles)
AQ = quantile(xdata,prob=c(0,0.25,0.5,0.75,1))

# Print All the Quartiles
cat("All the Quartiles",AQ)

# Summary provides the Statistics Information of xdata.
summary(xdata)

# Draw a box plot for xdata
boxplot(xdata,main="Interquartile Range (IQR)",ylab="xdata")

# IQR is computed as the difference between the upper and lower quartiles of your data
as.numeric(quantile(xdata,0.75)-quantile(xdata,0.25))

# IQR is computed using IQR function.
IQR(xdata)


# Ex4b Write a R to compute Interquartile Range (IQR) for Sepal Length of Iris data

head(iris,150)
# Loading the sepal length of Iris data
xdata = iris$Sepal.Length

# Compute Minimum, First, Second or Median, Third and Maximum Quartiles
MinQ= quantile(xdata,0)
FQ = quantile(xdata,0.25)
SQ = quantile(xdata,0.5)
TQ = quantile(xdata,0.75)
MaxQ= quantile(xdata,1)

# Print the Quartiles One by One
cat("Minimum=",MinQ)
cat("Lower Quartile=",FQ)
cat("Median=",SQ)
cat("Upper Quartile=",TQ)
cat("Maximum=",MaxQ)

# Compute All the Quartiles (Min,First, Second or Median, Third and Max Quartiles)
AQ = quantile(xdata,prob=c(0,0.25,0.5,0.75,1))
cat("All the Quartiles",AQ)

# Summary provides the Statistics Information of xdata.
summary(xdata)

# Draw a box plot for xdata
boxplot(xdata,main="Interquartile Range for Sepal Length",ylab="Centimetres")

# IQR is computed as the difference between the upper and lower quartiles of your data
as.numeric(quantile(xdata,0.75)-quantile(xdata,0.25))

# IQR is computed using IQR function.
IQR(xdata)
