base <-
 ggplot(mpg, aes(displ, hwy)) +
 geom_point()
p <-  base + list(subset(mpg, fl == "p"), geom_smooth())
