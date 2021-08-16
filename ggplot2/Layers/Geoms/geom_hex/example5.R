d <- ggplot(diamonds, aes(carat, price))
p <-  d + geom_hex(binwidth = c(.1, 500))
