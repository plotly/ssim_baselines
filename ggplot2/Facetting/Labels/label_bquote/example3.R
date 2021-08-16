p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + facet_grid(. ~ vs + am, labeller = label_bquote(cols = .(am) ^ .(vs)))
