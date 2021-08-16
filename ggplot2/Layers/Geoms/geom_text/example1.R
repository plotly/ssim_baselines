p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <- p + geom_text()
