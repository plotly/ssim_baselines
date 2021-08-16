p <- ggplot(mtcars, aes(cyl, mpg)) +
  stat_summary(fun = "mean", geom = "point")
p <-  p + coord_cartesian(ylim = c(15, 30))
