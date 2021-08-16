p <- ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(alpha = year))
p <-  p + scale_alpha(range = c(0.4, 0.8))
