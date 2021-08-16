d <- ggplot(diamonds, aes(carat, price)) +
  stat_bin2d(bins = 25, colour = "white")
p <-  d + scale_x_continuous(limits = c(0, 1))
