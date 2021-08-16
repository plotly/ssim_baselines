v <- ggplot(faithfuld, aes(waiting, eruptions, z = density))
p <-  v + geom_contour(aes(colour = after_stat(level)))
