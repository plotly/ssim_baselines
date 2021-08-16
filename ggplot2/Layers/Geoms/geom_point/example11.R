p <- ggplot(mtcars, aes(mpg, wt, shape = factor(cyl)))
p <-    
 p +
  geom_point(colour = "black", size = 4.5) +
  geom_point(colour = "pink", size = 4) +
  geom_point(aes(shape = factor(cyl)))
