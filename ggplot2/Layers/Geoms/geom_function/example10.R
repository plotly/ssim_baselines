set.seed(1492)
f <- function(x) 0.5*exp(-abs(x))
p <-  base + geom_function(fun = f)
