d <- ggplot(mtcars, aes(cyl, mpg)) + geom_point()
p <-  d + stat_summary(fun = mean, fun.min = min, fun.max = max, colour = "red")
