p <- ggplot(mtcars, aes(factor(cyl)))
p <-  p + geom_bar(fill = "white", colour = "red")
