cars <- ggplot(mtcars, aes(mpg, factor(cyl)))
p <- cars + geom_point()
