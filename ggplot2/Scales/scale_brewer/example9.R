v <- ggplot(faithfuld) +
  geom_tile(aes(waiting, eruptions, fill = density))
