p <- ggplot(mtcars, aes(factor(cyl), mpg))
p <- p + geom_violin(adjust = .5)
