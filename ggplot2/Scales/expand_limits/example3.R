p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
p <-  p + expand_limits(x = 0, y = 0)
