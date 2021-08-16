p <- ggplot(mtcars, aes(mpg, wt)) +
  geom_point()
old <- theme_set(theme_bw())
theme_set(old)
theme_update(panel.grid.minor = element_line(colour = "red"))
p
