p <- ggplot(mtcars, aes(disp, wt)) +
  geom_point() +
  geom_smooth()
p <-  p + coord_cartesian(expand = FALSE)
