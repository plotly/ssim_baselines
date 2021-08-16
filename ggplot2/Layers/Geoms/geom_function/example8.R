set.seed(1492)
base <-
  ggplot() +
  xlim(-5, 5)
p <-  base + geom_function(fun = function(x) 0.5*exp(-abs(x)))
