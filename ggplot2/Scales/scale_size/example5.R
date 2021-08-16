p <- ggplot(mpg, aes(displ, hwy, size = hwy)) +
   geom_point()
p <-  p + scale_size_binned()
