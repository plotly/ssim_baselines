scatter_by <- function(data, ...) {
  ggplot(data) + geom_point(aes(...))
}
p <-  scatter_by(mtcars, disp, drat)
