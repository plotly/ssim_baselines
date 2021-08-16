p <- ggplot(mpg, aes(cty * 100, hwy * 100)) +
  geom_point() +
  facet_wrap(vars(class))
p <-  p + guides(x = guide_axis(angle = 90))
