p1 <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()
p <-  p1 + xlim(2, 6)
