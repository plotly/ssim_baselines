p <- ggplot(mtcars, aes(factor(cyl)))
p <-  p + geom_bar(fill = NA, colour = "#00abff")
