p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-    
 p + annotate(
  "rect", xmin = 2, xmax = 3.5, ymin = 2, ymax = 25,
  fill = "dark grey", alpha = .5
)
