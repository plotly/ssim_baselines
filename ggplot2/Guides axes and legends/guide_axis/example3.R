p <- ggplot(mpg, aes(cty * 100, hwy * 100)) +
  geom_point() +
  facet_wrap(vars(class))
p <-  p + guides(x = guide_axis(n.dodge = 2), y.sec = guide_axis())
