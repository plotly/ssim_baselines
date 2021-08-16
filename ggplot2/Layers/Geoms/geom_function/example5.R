set.seed(1492)
base <-
  ggplot() +
  xlim(-5, 5)
p <-  base + stat_function(fun = dnorm, geom = "point", n = 20)
