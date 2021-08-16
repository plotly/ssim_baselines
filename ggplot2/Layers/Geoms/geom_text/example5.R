p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 p +
  geom_point() +
  geom_text(hjust = 0, nudge_x = 0.05)
