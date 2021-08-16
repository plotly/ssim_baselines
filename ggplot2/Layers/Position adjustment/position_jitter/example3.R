p <-    
 ggplot(mtcars, aes(am, vs)) +
  geom_jitter(width = 0.1, height = 0.1)
