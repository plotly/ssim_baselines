p <- ggplot(mtcars, aes(mpg, wt)) + geom_point(aes(colour = factor(cyl)))
p <-  p + scale_colour_grey() + theme_bw()
