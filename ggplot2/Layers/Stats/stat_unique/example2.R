p <-    
 ggplot(mtcars, aes(vs, am)) +
  geom_point(alpha = 0.1, stat = "unique")
