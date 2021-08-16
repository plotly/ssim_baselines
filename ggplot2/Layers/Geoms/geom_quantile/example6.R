m <-
  ggplot(mpg, aes(displ, 1 / hwy)) +
  geom_point()
p <-  m + geom_quantile(colour = "red", size = 2, alpha = 0.5)
