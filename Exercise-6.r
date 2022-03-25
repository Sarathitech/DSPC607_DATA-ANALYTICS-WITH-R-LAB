# Write a R program to analysis of the Linear and Nonlinear.
# Relationship between two variable in the different data sets.
# (women Data and mtcars Data)Using Covariance,Pearson and Spearman Correlation coefficients.


# 1.Analysis of the the Positive Relationship between Height and Weight of Women Using Correlation Coefficients.

# loading the Women's Data sets 
head(women,15)

#Scatter Plot library(ggplot2)
scatter.smooth(women$height,women$weight,main="ScatterPlot",xlab="Height",ylab="Weight")

#Finding the covariance between Height and Weight of Women.
c11 = cov(women$height, women$height)
c12 = cov(women$height, women$weight)
c21 = cov(women$weight, women$height)
c22 = cov(women$weight, women$weight)

#Constructing the Covariance Matrix
cm1 = matrix(data = c(c11,c12,c21,c22), nrow = 2, byrow = TRUE)
print("Covariance Matrix")
print(cm1)

#Constructing the full Covariance Matrix at a time
cm2 = cov(women) print("Covariance Matrix")
print(cm1)

#Finding the Correlation Coefficients between Height and Weight of Women.
cc11 = cor(women$height,women$height)
cc12 = cor(women$height,women$weight)
cc21 = cor(women$weight,women$height)
cc22 = cor(women$weight,women$weight)

#Constructing the Correlation Coefficients
cc1 = matrix(data = c(cc11,cc12,cc21,cc22), nrow = 2, byrow = TRUE)
print("Pearson's Correlation Coefficients")
print(cc1)

#Constructing the Correlation Coefficients at a time
cc2 = cor(women)
print("Pearson's Correlation Coefficients")
print(cc2)
cc3 = cor(women,method = "spearman")
print("Spearman's Correlation Coefficients")
print(cc3)
if(cc11 > 0){
  print("Relationship b/w Women's Weight and Height is Positive")
} else {
  print("Relationship b/w Women's Weight and Height is Negative")}



#2. Analysis of the Negative Relationship Between Weight of Cars and Mileage Using Correlation coefficients.

#loading the mtcars Data sets
head(mtcars,32)

#Finding the Correlation Coeff. b/w Weight of Cars and Mileage.
co = cov(mtcars$wt, mtcars$mpg)
print("Covariance")
print(co)

#Finding the Pearson Correlation Coeff. b/w Weight of Cars and Mileage.
cc = cor(mtcars$wt, mtcars$mpg)
print("Pearson's Correlation Coefficient")
print(cc)

#Finding the Spearman Correlation Coeff. b/w Weight of Cars and Mileage.
ccs = cor(mtcars$wt, mtcars$mpg,method = "spearman")
print("Spearman's Correlation Coefficient")
print(ccs)

#Scatter Plot library(ggplot2)
scatter.smooth(mtcars$wt, mtcars$mpg, main="Scatter Plot", xlab="CarWeight", ylab="Mileage")

if(cc > 0){ 
  print("Relationship b/w Car Weight and Mileage is Positive")
} else
{print("Relationship b/w Car Weight and Mileage is Negative")}



# Ex 6b Write a R program to Analysis of the Linear and Nonlinear
# Relationship Between the Continuous Variables of Iris Data #Using Multiple Correlation coefficients
# Analysis of the Positive and Negative Relationship between Two or More variables (Continuous Vs Continuous, Continuous Vs Categorical Data) Using Multiple Correlations

#loading the Iris Data sets
head(iris[1:5,]) 
head(iris[51:55,])
head(iris[101:105,]) 
iris.nospecies<- iris[,-5]

#Constructing the Covariance Matrix
coi = cov(iris.nospecies)
print("Covariance Matrix")
print(coi)

#Finding the Multiple Pearson's Correlation Coefficients
cci = cor(iris.nospecies)
print("Multiple Pearson's Correlation Coefficients")
print(coi)

#Finding the Multiple Spearman Correlation Coefficients
ccs = cor(iris.nospecies, method = "spearman")
print("Multiple Spearman's Correlation Coefficients")
print(ccs)

#Analysis of Iris Data Using Box Plot
qplot(Species, Petal.Length, data=iris, geom="boxplot", fill=Species)

#Analysis of Iris Data Using Normal Density
qplot (Petal.Length, data=iris, geom="density", alpha=I(.7),fill=Species)

if(cci[4,1] > 0){ print("Relationship b/w Petal Width and Sepal
Length is Positive")
} else {
  print("Relationship b/w Petal Width and Sepal Length is
Negative")}

if(cci[2,1] > 0){ print("Relationship b/w Sepal Width and Sepal
Length is Positive")
} else {
  print("Relationship b/w Sepal Width and Sepal Length is Negative")}


#Relationship between the petal lengths of the different iris species
install.packages("corrgram")
library(corrgram)
corrgram(iris, lower.panel=panel.conf, upper.panel=panel.pts)

# Overlapping Density Plot for Three Species
corrgram(iris, lower.panel=panel.pie, upper.panel=panel.pts,diag.panel=panel.density, main=paste0("corrgram of petal and sepal", "measurements in iris data set"))

