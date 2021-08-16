p <- ggplot(mtcars, aes(mpg, wt, colour = cyl)) + geom_point()
p <-  p + labs(title = "New plot title")
