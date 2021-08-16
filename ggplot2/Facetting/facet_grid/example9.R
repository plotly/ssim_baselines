mg <- ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()
p <-  mg + facet_grid(vs + am ~ gear, margins = "vs")
