p <- ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()
p <-  p + scale_y_continuous("Miles/gallon", sec.axis = sec_axis(~ . + 10, name = derive()))
