stat_sum_df <- function(fun, geom="crossbar", ...) {
  stat_summary(fun.data = fun, colour = "red", geom = geom, width = 0.2, ...)
}
d <- ggplot(mtcars, aes(cyl, mpg)) + geom_point()
p <-  d + stat_sum_df("mean_sdl", fun.args = list(mult = 1), mapping = aes(group = cyl))
