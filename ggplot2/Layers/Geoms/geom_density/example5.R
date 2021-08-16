p <-    
 ggplot(diamonds, aes(depth, colour = cut)) +
  geom_density() +
  xlim(55, 70)
