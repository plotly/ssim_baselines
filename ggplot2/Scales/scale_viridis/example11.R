(v <- ggplot(faithfuld) +
  geom_tile(aes(waiting, eruptions, fill = density)))
p <-  v + scale_fill_viridis_c(option = "plasma")
