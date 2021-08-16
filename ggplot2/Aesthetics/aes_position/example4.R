p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-    
 p + geom_segment(
  aes(x = 2, y = 15, xend = 2, yend = 25),
  arrow = arrow(length = unit(0.5, "cm"))
)
