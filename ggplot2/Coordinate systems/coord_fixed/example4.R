p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
p <-  p + coord_fixed(xlim = c(15, 30))
