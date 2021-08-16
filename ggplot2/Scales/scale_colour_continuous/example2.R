v <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
geom_tile()
p <-  v + scale_fill_continuous(type = "gradient")
