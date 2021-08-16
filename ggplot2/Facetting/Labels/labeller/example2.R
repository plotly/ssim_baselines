p1 <- ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point()
p <-    
 p1 + facet_grid(
  vs + am ~ gear,
  labeller = labeller(.rows = label_both, .cols = label_value)
)
