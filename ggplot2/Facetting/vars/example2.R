p <- ggplot(mtcars, aes(wt, disp)) + geom_point()
wrap_by <- function(...) {
  facet_wrap(vars(...), labeller = label_both)
}
p <-  p + wrap_by(vs)
