p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + facet_grid(vs ~ ., labeller = label_bquote(alpha ^ .(vs)))
