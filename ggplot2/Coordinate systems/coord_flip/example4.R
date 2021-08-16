h <- ggplot(diamonds, aes(carat)) +
  geom_histogram()
p <-  h + coord_flip() + scale_x_reverse()
