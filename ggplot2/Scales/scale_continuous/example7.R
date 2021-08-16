p1 <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()
p <-  p1 + scale_x_continuous(breaks = c(2, 4, 6))
