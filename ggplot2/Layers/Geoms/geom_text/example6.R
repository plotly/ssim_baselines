p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 p +
  geom_point() +
  geom_text(vjust = 0, nudge_y = 0.5)
