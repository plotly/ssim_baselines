v <- ggplot(faithfuld, aes(waiting, eruptions, z = density))
p <-  v + geom_contour(bins = 5)
