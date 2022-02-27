# 2 a) Write a R program to perform the Matrix Operations such as Addition (+), Subtraction (-), Multiplication (%*%), Transpose (t), Inverse (solve()) and Diagonal of a Matrix (diag) using matrix, rbind and cbind  commands

#Creating A and B Matrices using matrix command
A <- matrix(data = c(1,2,3,4),nrow = 2,ncol = 2, byrow = T)
B <- matrix(data= c(5,6,7,8),nrow = 2,ncol=2,byrow = T)

#Creating C and D Matrices using rbind and cbind commands
C <- rbind(c(1,2,3),c(6,5,4))
D <- cbind(c(9,5,1),c(3,2,7))

A
B
C
D

print("Resultant Matrices")

print("Addition of Two Matrices=")   
A+B

print("Subtraction of Two Matrices=")
A-B

print("Scalar Multiplication of A Matrix=")
3*A

print("Multiplication of Two Matrices C & D=")
C%*%D

print("Diagonal Matrix of A")
diag(A)

cat("Transpose of C",t(C))


cat("Inverse of B",solve(B))



# 2b) Write a R program to perform the Matrix Operations such as Addition (+), Subtraction (-), Multiplication (%*%), Transpose (t), Inverse (solve()) and Diagonal of a Matrix (diag) using vector and matrix. (Get the input matrix from Keyboard)

print("Enter the size of matrix: A")
rows <- as.integer(readline("Rows: "))
columns <-as.integer(readline("Columns: "))
dimension1 <- rows*columns
avec1 = vector(mode="integer",length = 0)
index = 1
for(i in 1:dimension1)
{
  cat("Enter the element: ",index)
  value1 = as.integer(readline())
  avec <- c(avec,value1)
  index = index + 1
}

A<- matrix(data=avec, nrow =rows,ncol =columns,byrow=T)



print("Enter the size of  matrix:B")
rows <- as.integer(readline("Rows: "))
columns <-as.integer(readline("Columns: "))
dimension2 <- rows*columns
avec2 = vector(mode="integer",length = 0)
index = 1 
for(i in 1:dimension2)
{
  cat("Enter the element: ",index)
  value2 = as.integer(readline())
  avec2 <- c(avec,value2)
  index = index + 1
}

B<- matrix(data=avec2, nrow =rows,ncol =columns,byrow=T)

print("Matrix of A")
A

print("Matrix of B")
B

cat("Resultant Matrices")

print("Addition of Two Matrices=")
A+B

print("Subtraction of Two Matrices=")
A-B

print("Scalar Multiplication of a Matrix=")
3*A

print("Multiplication of Two Matrices=")
A%*%B

print("Diagonal Matrix")
diag(A)

cat("Transpose of A",t(A))

cat("Inverse of A" ,solve(A))

                                                                        