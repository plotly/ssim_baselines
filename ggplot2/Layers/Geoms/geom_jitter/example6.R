p <- ggplot(mpg, aes(cyl, hwy))
p <-    
 ggplot(mpg, aes(cty, hwy)) +
  geom_jitter()
