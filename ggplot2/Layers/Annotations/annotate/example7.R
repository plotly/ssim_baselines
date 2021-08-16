p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-    
 p + annotate("text", x = 4, y = 25, label = "italic(R) ^ 2 == 0.75",
  parse = TRUE)
