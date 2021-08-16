p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + geom_abline(intercept = 20)
