dat <- data.frame(x = 1:5, y = 1:5, p = 1:5, q = factor(1:5),
 r = factor(1:5))
p <-
  ggplot(dat, aes(x, y, colour = p, size = q, shape = r)) +
  geom_point()
p <-    
 p + guides(colour = guide_colorbar(), size = guide_legend(),
  shape = guide_legend())
