p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-    
 p + annotate("text", x = 4, y = 25,
  label = "paste(italic(R) ^ 2, \" = .75\")", parse = TRUE)
