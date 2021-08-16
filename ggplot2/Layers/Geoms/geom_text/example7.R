p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 p +
  geom_point() +
  geom_text(angle = 45)
