rm(list=ls())

## Parameters that work 
m <- 2 ** 32
a <- 1103515245
c <- 12345

#### Function LCG ####
LCG <- function(n, x0=2000, a=a, c=c, m=m){
  lcg <- vector(length=n)
  d <- x0
  for (i in 1:n) {
    d <- (a * d + c) %% m
    lcg[i] <- d / m
  }
  return(lcg)
}

#### Testing parameters####
LCG(10)


#### Random inv exp ####
ICDF_exp <- function(n, lambda=200){
  u <- runif(n)
  return((- lambda * log(1-u)))
}
hist(ICDF_exp(100))

#### INV NORMAL ####
ICDF_norm <- function(n){
  output <- vector(length=n)
  for (i in 1:(n)){
  start <- runif(2)
  u1 <- start[1]
  u2 <- start[2]
  z1 <- sqrt(-2*log(u1))*cos(2*pi*u2)
  z2 <- sqrt(-2*log(u1))*sin(2*pi*u2)
  output[i] <- c(z1)
  output[i+1]}
  
  return(output)
}
hist(ICDF_norm(100000))

