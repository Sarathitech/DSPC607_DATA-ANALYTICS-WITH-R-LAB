#Learning R Programming Basic Commands

1+1		       #Addition
10-2		     #Subtraction
2*2	         #Multiplication
100/10	     #Division
10^2         #Exponentiation

abs(-10)     #abs function in R
ceiling(4.5) #Ceiling and Floor Function in R
floor(4.5)  
sqrt(10)     #Square Root Fun in R
exp(2)       #Exponentiation Fun in R
pi           #Print pi value.
log(100)		 #natural logs(i.e. base e)
log(100, base=10)	#base 10 logs

(2+2)*2      #Expression
1+(2*2)
2==2         # Relational operation
5<=6
5>=6

x<- c(2,5,7,8,9) #Creating a Vector with integer vales using c fun in R
x > 5
mean(c(1,2,3,4))        #Return mean value
x<- c("apple","banana") #Creating a Vector with strings using c fun in R
x

Y<- 10+10
Z<- -10+10
Y;Z
x<-c(1,2,3)
y<-rnorm(4,5)            #random deviation function
x;y

getwd()                  #Current working directory
search()                 #base packages
x<-1:10                  #creating a vector with 1 to 10.
x
ls( )                    #list the used variables

save(x, y, file = "xy.RData")# x and y values are printed in a file called xy.RData.
save.image()                 # creating ".RData" in current working directory
load("xy.RData")             # Loading  "xy.RData" in current working directory
unlink("xy.RData")

lsx<-c(TRUE,FALSE)       	   #logical vector
y<-c("a","b","c")	           #character vector
z<-c(1,2.3,4)	               #numeric integer vector
m<-c(1.2,1.5,1.7)	           #numeric real/double vector
lsx; y; z; m
class(x); typeof(x); mode(x)

is.numeric(c("a","b"))       #Test whether the given data are numeric or not
is.numeric(c(5,6))
as.character(c(1,2,3))       #Converted the given into character form 
as.numeric(c("c","4","b"))   #Converted the given into numeric form 

sum(c(FALSE,TRUE,TRUE))
c(1,2,3,4,5,6,7,8)
1:10
seq(1,8, by =2)              #Generates the sequence from:to by
rep(1,5)	                   #Replicate Elements of Vectors and Lists
rep(c(1,2,3),5)

x<-c(1,2,3,4,5)
names(x)<-c("a","b","c","d","e") #Names of x
x

x[c(1,2,3)]	 #by numeric position
x[x<3]	     #by logical vector
x

d=x[x<3]	   #by logical vector
d
x[c("b","c")]	 # by name
f=x[c("b","c")]
f

y<-matrix(c(1,2,3,4,5,6),byrow=TRUE,ncol=2) #Creating a matrix
y          
class(y)
dim(y)	
nrow(y)	#no of rows
ncol(y)	#no of column
rownames(y)<-c("a","b","c")
colnames(y)<-c("col1","col2")
y                            
y["a",]	
y[c(1,2),]

#Creating a list
x = list(name="Arun Patel", nationality="Indian", height=5.5, grades=c(95,45,80))
x
class(y)
x$name
x$hei

#Creating a Data frame
z<-data.frame(var1=1:9,var2=letters[1:9])
z
View(z)

#Reading the Data from csv file
data=read.csv("d:\\sample.csv",header=T,sep=",")
data
nrow(data)
ncol(data)
data
head(data)

#Creating a function 
hw.f1 <- function()
{
  hw <- "Hello World"
  hw
}
hw.f1()


Install.packages("Matrix")
dependencies=TRUE 
Install.packages("Matrix", dependencies=TRUE)
d=library(Matrix)
d

x<-c(1,2,NA,4)
x
x<-c("a","b",NA,"c")
x
is.na(x)
na.omit(x)


library(MASS)	#user survey data from MASS package
data(survey)	#load an internal data set
data()
mydata<-survey
names(mydata)  
str(mydata)


x <- c(1,2,3,4,5)
range(x)
dat<-data.frame(x=c(1,2,3,4,5),y=c(1,1,0,1,1))
dat
dat$z<-dat$x +dat$y
dat
dat$z<-dat$x+10

rm(x)                    #removing a variable 
x
