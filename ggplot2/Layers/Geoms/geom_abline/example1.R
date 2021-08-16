p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + geom_vline(xintercept = 5)
