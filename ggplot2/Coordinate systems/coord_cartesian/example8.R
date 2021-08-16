d <- ggplot(diamonds, aes(carat, price)) +
  stat_bin2d(bins = 25, colour = "white")
p <-  d + coord_cartesian(xlim = c(0, 1))
