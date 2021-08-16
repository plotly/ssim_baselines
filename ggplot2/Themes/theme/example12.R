p1 <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  labs(title = "Fuel economy declines as weight increases")
p <-  p1 + theme(axis.title.y = element_text(size = rel(1.5), angle = 90))
