mt <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point()
p <-  mt + facet_grid(vars(cyl), scales = "free")
