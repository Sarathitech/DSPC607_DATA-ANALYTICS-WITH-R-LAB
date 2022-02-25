# Matrices and Arrays
a<- matrix(data = c(1,2,3),nrow=1,ncol=3)
a
a<- matrix(data = c(1,2,3),nrow=3,ncol=1)
a

#Filling Direction
matrix(data=c(1,2,3,4,5,6),nrow =2,ncol=3,byrow=FALSE)
matrix(data=c(1,2,3,4,5,6),nrow =2,ncol=3,byrow=TRUE)

#Row and Column Bindings
rbind(1:3,4:6)
cbind(c(1,4),c(2,5),c(3,6))

#String on Matrix
Names <- matrix(data=c("R","V","A","E","G","L","U","S"),nrow =4,ncol=2,byrow=TRUE)
Names

#Matrix Dimensions
mymat <- rbind(c(1,2,3),5:3,c(100,20,30),12:14)
dim(mymat)
nrow(mymat)
ncol(mymat)
print(mymat)

#Subsetting
A<-matrix(data=c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow =TRUE )
A
A[3,3]

#Row, Column, Diagonal Extractions
A[,1]

A[2,]

A[1:2,]
A[,1:2]
A[1:2,1:2]

A[,c(3,1)]
A[c(1,3),c(2)]
A[c(2,1),1:2]

diag(x=A)

#Omiting and Overwriting
A[,-2]
A[-1,2:3]
A[-1,-2]
A[-2,-c(2,3)]

B<-A
B
B[2,]<-1:3
B
B[c(1,2),2] <- 100
B

diag(x=B)<- rep(x=0,times=3)
B

#Matrix operations and Algebra
#Matrix Transpose
A <- rbind(1:3,4:6)
A
t(A)
t(t(A))
t(t(A)) == A

#Identity Matrix
A<-diag(x=3)
A

#Scalar multiple of a Matrix
A<-cbind(c(1,2,3),c(4,5,6))
A
a<-3
a*A

#Matrix Addition and Subtraction
A<-matrix(data=c(1,2,3,4,5,6),nrow=3,ncol=2,byrow=FALSE)
A
B<-A
B
A+B
A-B

#Matrix Multiplication
A<-rbind(1:3,c(1,4,5))
A
B<-t(A)
dim(A)
dim(B)
A%*%B
B%*%A

#Matrix Inversion
A<-cbind(1:2,4:5)
A
solve(A)

A%*%solve(A)


#Multidimensional Arrays
AR<-array(data=1:24,dim=c(3,4,2))
AR
BR<- array(data=rep(1:24,times=4),dim=c(3,4,2,3))
BR

#Subsets and Extraction
AR[2,,2]
AR[1,, ]

BR[1,,,1]
BR[,,2,]
BR[3:2,4,,]
BR[2,,1,]

rows <- as.integer(readline("Enter the number of rows: ")) 
columns <- as.integer(readline("Enter the number of columns: "))
total<-rows*columns
cat("Total number elements",total)
i <- 1
j <- 0
while(j<=total){
 cat("Element",i)
 r<-as.integer(readline("Waiting for input: ")) 
 x <- list()
 append(x,r)
 i= i+1
 j = j+1
}
mat1 <- matrix(data =x ,nrow=rows,ncol = columns, byrow = T ) 
mat1
