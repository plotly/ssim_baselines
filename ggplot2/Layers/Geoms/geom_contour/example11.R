p <-    
 if (requireNamespace("interp")) {
  # Use a dataset from the interp package
  data(franke, package = "interp")
  origdata <- as.data.frame(interp::franke.data(1, 1, franke))
  grid <- with(origdata, interp::interp(x, y, z))
  griddf <- subset(data.frame(x = rep(grid$x, nrow(grid$z)),
                              y = rep(grid$y, each = ncol(grid$z)),
                              z = as.numeric(grid$z)),
                   !is.na(z))
  ggplot(griddf, aes(x, y, z = z)) +
    geom_contour_filled() +
    geom_point(data = origdata)
} else
  message("Irregular data requires the 'interp' package")
