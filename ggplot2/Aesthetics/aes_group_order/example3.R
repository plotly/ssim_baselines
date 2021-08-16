p <- ggplot(mtcars, aes(wt, mpg))
p <-  p + geom_point(aes(shape = factor(cyl)), size = 4)
