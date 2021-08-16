p <- ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()
p <-  p + scale_y_continuous(sec.axis = sec_axis(~ . + 10))
