df <- expand.grid(x = 0:5, y = 0:5)
df$z <- runif(nrow(df))
p <-   
 ggplot(df, aes(x, y, fill = z)) +
  geom_raster()
