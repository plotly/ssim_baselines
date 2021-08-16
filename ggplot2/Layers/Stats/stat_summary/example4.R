d <- ggplot(mtcars, aes(cyl, mpg)) + geom_point()
p <-  d + stat_summary(fun = "mean", colour = "red", size = 2, geom = "point")
