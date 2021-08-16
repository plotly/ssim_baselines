g <- ggplot(mpg, aes(class))
p <-  g + geom_bar(aes(weight = displ))
