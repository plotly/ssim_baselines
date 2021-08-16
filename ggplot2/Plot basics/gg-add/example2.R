base <-
 ggplot(mpg, aes(displ, hwy)) +
 geom_point()
p <-  base %+% subset(mpg, fl == "p")
