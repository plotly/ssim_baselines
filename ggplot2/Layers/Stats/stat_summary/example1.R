d <- ggplot(mtcars, aes(cyl, mpg)) + geom_point()
p <-  d + stat_summary(fun.data = "mean_cl_boot", colour = "red", size = 2)
