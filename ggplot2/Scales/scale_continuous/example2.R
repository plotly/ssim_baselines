p1 <- ggplot(mpg, aes(displ, hwy)) +
  geom_point()
p <-    
 p1 +
  scale_x_continuous("Engine displacement (L)") +
  scale_y_continuous("Highway MPG")
