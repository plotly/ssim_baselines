df <- data.frame(
  x = runif(100),
  y = runif(100),
  z1 = rnorm(100)
)
p <-    
 ggplot(df, aes(x, y)) +
  geom_point(aes(colour = z1)) +
  scale_colour_steps()
