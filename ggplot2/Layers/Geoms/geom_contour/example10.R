v <- ggplot(faithfuld, aes(waiting, eruptions, z = density))
p <-    
 v + geom_raster(aes(fill = density)) +
  geom_contour(colour = "white")
