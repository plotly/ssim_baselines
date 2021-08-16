p <- ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars)))
p <-   
 p +
  geom_text(
    aes(label = paste(wt, "^(", cyl, ")", sep = "")),
    parse = TRUE
  )
