p <- ggplot(mtcars, aes(factor(cyl), mpg))
p <- p + geom_violin(aes(fill = factor(cyl)))
