v <- ggplot(faithfuld, aes(waiting, eruptions, z = density))
p <-  v + geom_contour(colour = "red")
