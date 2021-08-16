p <- ggplot(mtcars, aes(wt, disp)) + geom_point()
p <-  p + facet_wrap(vars(vs, am))
