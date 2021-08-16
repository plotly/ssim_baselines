d <- ggplot(diamonds, aes(x, y)) + xlim(4, 10) + ylim(4, 10)
p <-  d + geom_bin_2d()
