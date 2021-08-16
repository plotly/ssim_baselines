p1 <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  labs(title = "Fuel economy declines as weight increases")
p <-  p1 + theme(panel.grid.major = element_line(colour = "black"))
