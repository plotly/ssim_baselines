p <- ggplot(mtcars, aes(factor(cyl), mpg))
p <- p + geom_violin(fill = "grey80", colour = "#3366FF")
