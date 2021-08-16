p <- ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(alpha = year))
