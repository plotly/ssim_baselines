p1 <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()
p <-  p1 + labs(x = NULL, y = NULL)
