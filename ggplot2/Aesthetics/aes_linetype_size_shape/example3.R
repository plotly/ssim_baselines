df <- data.frame(x = 1:10 , y = 1:10)
p <- ggplot(df, aes(x, y))
p <-  p + geom_line(linetype = "3313")
