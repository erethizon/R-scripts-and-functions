#generate correlated random numbers

N=2 #number of variables
mu <- rep(500,N) #
p=0.8 #correlation coefficient
Sigma <- matrix(p,ncol=N,nrow=N) #variance covariance matrix
diag(Sigma) <- 50 #standard deviations
#now generate numbers
library(MASS)
data<-mvrnorm(25, mu, Sigma) #generates random numbers for
#N variables with determined properties.
#it works!