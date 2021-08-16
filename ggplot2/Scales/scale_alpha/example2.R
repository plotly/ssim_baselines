p <- ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(alpha = year))
p <-  p + scale_alpha("cylinders")
