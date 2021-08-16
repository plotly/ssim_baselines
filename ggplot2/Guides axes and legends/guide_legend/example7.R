p3 <- ggplot(mtcars, aes(vs, am, colour = factor(cyl))) +
  geom_jitter(alpha = 1/5, width = 0.01, height = 0.01)
p <-  p3 + guides(colour = guide_legend(override.aes = list(alpha = 1)))
