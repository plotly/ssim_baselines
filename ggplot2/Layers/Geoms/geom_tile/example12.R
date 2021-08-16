cars <- ggplot(mtcars, aes(mpg, factor(cyl)))
p <-   
 cars +
  stat_density(
    aes(fill = after_stat(count)),
    geom = "raster",
    position = "identity"
  )
