p1 <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()
p <-  p1 + scale_x_continuous(limits = c(0, 10))
