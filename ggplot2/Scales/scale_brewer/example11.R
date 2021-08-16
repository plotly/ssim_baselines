v <- ggplot(faithfuld) +
  geom_tile(aes(waiting, eruptions, fill = density))
p <-  v + scale_fill_distiller(palette = "Spectral")
