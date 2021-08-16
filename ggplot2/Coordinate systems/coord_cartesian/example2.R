p <- ggplot(mtcars, aes(disp, wt)) +
  geom_point() +
  geom_smooth()
p <-  p + scale_x_continuous(limits = c(325, 500))
