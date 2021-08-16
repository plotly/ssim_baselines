base <-
 ggplot(mpg, aes(displ, hwy)) +
 geom_point()
p <-  base + geom_smooth()
