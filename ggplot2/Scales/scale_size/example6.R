p <-    
 ggplot(mpg, aes(class, cyl)) +
  geom_count() +
  scale_size_area()
