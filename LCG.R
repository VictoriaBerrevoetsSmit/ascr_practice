rm(list=ls())

## Parameters that work 
m <- 2 ** 32
a <- 1103515245
c <- 12345

## Function
LCG <- function(n, x0=2000, a=a, c=c, m=m){
  lcg <- vector(length=n)
  d <- x0
  for (i in 1:n) {
    d <- (a * d + c) %% m
    lcg[i] <- d / m
  }
  return(lcg)
}

## Testing parameters
LCG(10)
