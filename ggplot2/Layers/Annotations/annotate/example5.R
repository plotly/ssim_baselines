p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-    
 p + annotate("pointrange", x = 3.5, y = 20, ymin = 12, ymax = 28,
  colour = "red", size = 1.5)
