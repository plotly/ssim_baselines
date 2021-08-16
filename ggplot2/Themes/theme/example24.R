p3 <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl)
p <-  p3 + theme(strip.background = element_rect(colour = "black", fill = "white"))
