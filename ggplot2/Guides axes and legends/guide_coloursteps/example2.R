df <- expand.grid(X1 = 1:10, X2 = 1:10)
df$value <- df$X1 * df$X2
p <- ggplot(df, aes(X1, X2)) + geom_tile(aes(fill = value))
p <-  p + scale_fill_binned(breaks = c(10, 25, 50))
