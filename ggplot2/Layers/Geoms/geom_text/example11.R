p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <- p + geom_label(aes(fill = factor(cyl)), colour = "white", fontface = "bold")
