v <- ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
geom_tile()
tmp <- getOption("ggplot2.continuous.fill") # store current setting
options(ggplot2.continuous.fill = scale_fill_distiller)
p <-  v
options(ggplot2.continuous.fill = tmp) # restore previous setting
