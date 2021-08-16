p3 <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  facet_wrap(~ cyl)
p <-  p3 + theme(panel.spacing = unit(1, "lines"))
