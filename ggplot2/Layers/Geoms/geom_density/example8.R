p <-    
 ggplot(diamonds, aes(carat, after_stat(count), fill = cut)) +
  geom_density(position = "stack")
