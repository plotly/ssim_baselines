p <- ggplot(mpg, aes(cyl, hwy))
p <-    
 ggplot(mpg, aes(cty, hwy)) +
  geom_jitter(width = 0.5, height = 0.5)
