p <- ggplot(mtcars, aes(mpg, wt)) + geom_point()
p <-  p + coord_fixed(ratio = 1)
