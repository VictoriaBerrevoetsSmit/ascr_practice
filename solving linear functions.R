library(ggplot2)
# Generate large random data

X <- matrix(rnorm(5000 * 100), 5000, 100) 
y <- rnorm(5000)

library(microbenchmark) 
microbenchmark(solve(t(X) %*% X) %*% t(X) %*% y)
library(ggplot2)

m <- microbenchmark(solve(t(X) %*% X) %*% t(X) %*% y,solve(crossprod(X), crossprod(X, y)), qr.coef(qr(X), y))
autoplot(m)
                    