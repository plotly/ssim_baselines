p <-    
 ggplot(mtcars) +
  geom_bar(aes(mpg)) +
  scale_x_binned()
