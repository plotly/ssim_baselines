p <- ggplot(economics, aes(x = date, y = unemploy))
p <-  p + geom_point(colour = "red")
