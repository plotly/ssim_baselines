d <- ggplot(dsamp, aes(carat, price, colour = clarity))
p <-  d + geom_point(alpha = 0.2)
