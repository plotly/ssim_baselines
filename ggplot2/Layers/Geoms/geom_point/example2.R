p <- ggplot(mtcars, aes(wt, mpg))
p <-  p + geom_point(aes(colour = factor(cyl)))
