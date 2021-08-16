df <- expand.grid(X1 = 1:10, X2 = 1:10)
df$value <- df$X1 * df$X2
p1 <- ggplot(df, aes(X1, X2)) + geom_tile(aes(fill = value))
p2 <- p1 + geom_point(aes(size = value))
p <-    
 p1 +
  scale_fill_continuous(
    breaks = c(5, 10, 15),
    labels = paste("long", c(5, 10, 15)),
    guide = guide_legend(
      direction = "horizontal",
      title.position = "top",
      label.position = "bottom",
      label.hjust = 0.5,
      label.vjust = 1,
      label.theme = element_text(angle = 90)
    )
  )
