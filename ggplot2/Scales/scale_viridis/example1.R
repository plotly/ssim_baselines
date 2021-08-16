dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
p <-    
 ggplot(dsamp, aes(carat, price)) +
  geom_point(aes(colour = clarity))
