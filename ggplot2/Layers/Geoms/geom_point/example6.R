d <- ggplot(diamonds, aes(carat, price))
p <-  d + geom_point(alpha = 1/10)
