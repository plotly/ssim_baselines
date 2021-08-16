p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 p +
  geom_text(aes(size = wt)) +
  scale_radius(range = c(3,6))
