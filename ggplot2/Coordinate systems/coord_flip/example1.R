p <-  
 ggplot(diamonds, aes(cut, price)) +
  geom_boxplot() +
  coord_flip()
