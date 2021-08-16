p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 p +
  geom_text() +
  annotate(
    "text", label = "plot mpg vs. wt",
    x = 2, y = 15, size = 8, colour = "red"
  )
