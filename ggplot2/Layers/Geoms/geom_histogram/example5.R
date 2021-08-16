p <-    
 ggplot(diamonds, aes(carat)) +
  geom_bar() +
  scale_x_binned()
