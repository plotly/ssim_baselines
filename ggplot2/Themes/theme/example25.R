p3 <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl)
p <-  p3 + theme(strip.text.x = element_text(colour = "white", face = "bold"))
