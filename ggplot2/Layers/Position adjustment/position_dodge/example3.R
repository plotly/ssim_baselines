p <-    
 ggplot(diamonds, aes(price, fill = cut)) +
  geom_histogram(position="dodge2")
