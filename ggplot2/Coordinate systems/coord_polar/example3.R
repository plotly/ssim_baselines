cxc <- ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(width = 1, colour = "black")
p <-  cxc + coord_polar(theta = "y")
