p1 <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  labs(title = "Fuel economy declines as weight increases")
p <-  p1 + theme(axis.line = element_line(size = 3, colour = "grey80"))
