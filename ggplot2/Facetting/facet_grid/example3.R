p <- ggplot(mpg, aes(displ, cty)) + geom_point()
p <-  p + facet_grid(vars(drv), vars(cyl))
