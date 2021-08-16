p <- ggplot(mtcars, aes(disp, wt)) +
  geom_point() +
  geom_smooth()
p <-  p + coord_cartesian(xlim = c(325, 500), expand = FALSE)
