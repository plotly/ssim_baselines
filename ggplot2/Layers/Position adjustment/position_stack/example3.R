p <-    
 ggplot(diamonds, aes(price, fill = cut)) +
  geom_histogram(binwidth = 500)
