p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 if (FALSE) {
# Doesn't work on all systems
p +
  geom_text(family = "Times New Roman")
}
