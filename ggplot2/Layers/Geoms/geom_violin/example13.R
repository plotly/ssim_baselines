p <- ggplot(mtcars, aes(factor(cyl), mpg))
p <- p + geom_violin(draw_quantiles = c(0.25, 0.5, 0.75))
