p <- ggplot(mpg, aes(displ, hwy)) + geom_point()
p <-  p + facet_wrap(vars(class), nrow = 4)
