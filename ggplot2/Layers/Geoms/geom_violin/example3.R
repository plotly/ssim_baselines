p <- ggplot(mtcars, aes(factor(cyl), mpg))
p <- p + geom_violin() + geom_jitter(height = 0, width = 0.1)
