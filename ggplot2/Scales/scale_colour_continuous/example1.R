v <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
geom_tile()
