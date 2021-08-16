d <- ggplot(mtcars, aes(cyl, mpg)) + geom_point()
p <-  d + aes(colour = factor(vs)) + stat_summary(fun = mean, geom="line")
