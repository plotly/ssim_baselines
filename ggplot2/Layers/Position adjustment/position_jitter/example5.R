jitter <- position_jitter(width = 0.1, height = 0.1)
p <-    
 ggplot(mtcars, aes(am, vs)) +
  geom_point(position = jitter) +
  geom_point(position = jitter, color = "red", aes(am + 0.2, vs + 0.2))
