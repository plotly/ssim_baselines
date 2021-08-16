set.seed(1492)
base <-
  ggplot() +
  xlim(-5, 5)
p <-   
 base +
  geom_function(aes(colour = "normal"), fun = dnorm) +
  geom_function(aes(colour = "t, df = 1"), fun = dt, args = list(df = 1))
