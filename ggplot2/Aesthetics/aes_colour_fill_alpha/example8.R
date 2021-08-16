p <-    
 ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density))
