df <- data.frame(x = 1:3, y = c(4, 1, 9))
base <- ggplot(df, aes(x, y))
p <-  base + geom_path(size = 10, linejoin = "mitre", lineend = "butt")
