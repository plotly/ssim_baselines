p <-    
 ggplot(diamonds, aes(price, colour = cut)) +
  geom_freqpoly(binwidth = 500)
