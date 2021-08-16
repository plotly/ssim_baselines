df <- data.frame(x = 1:5, y = c(1, 2, NA, 4, 5))
p <-  ggplot(df, aes(x, y)) + geom_point() + geom_line()
