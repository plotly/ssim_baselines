d <- ggplot(diamonds, aes(x = cut, y = clarity))
p <-  d + geom_count(aes(size = after_stat(prop)))
