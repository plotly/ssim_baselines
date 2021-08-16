scatter_by <- function(data, x, y) {
  x <- enquo(x)
  y <- enquo(y)

  ggplot(data) + geom_point(aes(!!x, !!y))
}
p <-  scatter_by(mtcars, disp, drat)
