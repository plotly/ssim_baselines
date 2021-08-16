df <- data.frame(
  x = c(1, 1, 2, 2, 1.5),
  y = c(1, 2, 1, 2, 1.5),
  text = c("bottom-left", "bottom-right", "top-left", "top-right", "center")
)
p <-   
 ggplot(df, aes(x, y)) +
  geom_text(aes(label = text))
