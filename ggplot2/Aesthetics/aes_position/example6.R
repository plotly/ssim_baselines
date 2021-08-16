p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-    
 p + geom_segment(
  aes(x = 5, y = 30, xend = 3.5, yend = 25),
  arrow = arrow(length = unit(0.5, "cm"))
)
