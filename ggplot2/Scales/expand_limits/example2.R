p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
p <-  p + expand_limits(y = c(1, 9))
