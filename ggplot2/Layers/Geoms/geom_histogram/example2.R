p <-    
 ggplot(diamonds, aes(carat)) +
  geom_histogram(binwidth = 0.01)
