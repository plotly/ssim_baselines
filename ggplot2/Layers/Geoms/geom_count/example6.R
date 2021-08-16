d <- ggplot(diamonds, aes(x = cut, y = clarity))
p <-    
 d + geom_count(aes(size = after_stat(prop), group = cut)) +
  scale_size_area(max_size = 10)
