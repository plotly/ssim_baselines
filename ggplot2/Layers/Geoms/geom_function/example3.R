set.seed(1492)
base <-
  ggplot() +
  xlim(-5, 5)
p <-  base + geom_function(fun = dnorm, args = list(mean = 2, sd = .5))
