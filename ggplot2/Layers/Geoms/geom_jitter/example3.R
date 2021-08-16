p <- ggplot(mpg, aes(cyl, hwy))
p <-  p + geom_jitter(aes(colour = class))
