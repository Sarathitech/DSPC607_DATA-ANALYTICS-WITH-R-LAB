# Write a R program to construct Univariate Normal Density and to predict whether A Person is Adult or not Based on Height Univariate Training function

uvtrain <- function(hdata)
{
  xv=vector(mode="numeric", length=0)
  pv=vector(mode="numeric", length=0)
  hmin = min(hdata)-15
  hmax = max(hdata)+15
  m = mean(hdata);
  v = var(hdata);
  cat("Mean of Height", m ,"\n")
  cat("Variance of Height",v)
  
  for(x in hmin:hmax)
  {
    r = (x-m)^2/v
    p = (1/(sqrt(2*pi*v)))*exp(-0.5*r);
    xv <- c(xv, x)
    pv <- c(pv, p)
  }
  plot(xv,pv,xlab="Height of Person",ylab="p(x)",main="Univariate Normal
Density",col = "blue")
  return(list(m,v))
}

# Univariate Testing Function

uvtest <- function(m,v,ht)
{
  r = (ht-m)^2/v
  pt = (1/(sqrt(2*pi*v)))*exp(-0.5*r)
  if (pt >= 0.00005)
    print("The given height of person is an adult")
  else
    print("The given height of person is not an adult")
}

# Univariate Training Code
hdata <- c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178)
mv = uvtrain(hdata)

# Univariate Testing Code
ht = as.numeric(readline(prompt ='Enter the height of person ='))
m = as.numeric(mv[1])
v = as.numeric(mv[2])
uvtest(mv,ht)



# Write a R program to construct multivariate Normal Density and to predict whether A Person is Adult or not Based on Height and Weight Multivariate Training Function

mvtrain <- function(hwdata)
{
  nd=2
  hv=vector(mode="numeric", length=0)
  wv=vector(mode="numeric", length=0)
  pv=vector(mode="numeric", length=0)
  hmin = min(hwdata[,1])-15
  hmax = max(hwdata[,1])+15
  wmin = min(hwdata[,2])-15
  wmax = max(hwdata[,2])+15
  mv = colMeans(hwdata);
  cv = cov(hwdata);
  cat("Mean Vector", mv ,"\n")
  cat("Covariance of Height",cv)
  for(h in hmin:hmax)
  {
    for(w in wmin:wmax)
    {
      d = c(h,w)-mv
      r = ((t(d) %*% solve(cv)) %*% (d))
      p = 1/(2*pi*sqrt(det(cv)))*exp(-0.5*r)
      hv <- c(hv, h)
      wv <- c(wv, w)
      pv <- c(pv, p)
    }
  }
  
# install.packages("rgl", dependencies = TRUE)
# library(rgl)

plot3d(x = hv, y = wv, z = pv, col ="blue", xlab="Height", ylab="Weight",zlab="p(h,w)")
return (mvdata=data.frame(mv=mv,cv=cv))
}
# Multivariate Testing Function
mvtest <- function(mvdata,hwdata)
{
  mv = mvdata$mv
  cv = cbind(mvdata$cv.1, mvdata$cv.2)
  d = hwdata - mv
  r = ((t(d) %*% solve(cv)) %*% (d))
  pt = 1/(2*pi*sqrt(det(cv)))*exp(-0.5*r)
  if (pt >= 0.00005)
    print("person is an adult based on H & W")
  else
    print("person is not an adult based on H & W")
} 

# Multivariate Training Code
hwdata <- cbind(c(165, 170, 160, 154, 175, 155, 167, 177, 158, 178),
                c(78, 71, 60, 53, 72, 51, 64, 65, 55, 69))
mvdata = mvtrain(hwdata)

#Multivariate Testing Code
ht= as.numeric(readline(prompt ='Enter the Height of person ='))
wt= as.numeric(readline(prompt ='Enter the Weight of person ='))
hwdata = c(ht,wt)
mvtest(mvdata,hwdata)