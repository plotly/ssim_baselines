p <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
p <- p + geom_rug(sides="trbl") # All four sides
