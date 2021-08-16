p <-    
 ggplot(diamonds, aes(carat, fill = cut)) +
  geom_density(position = "stack")
