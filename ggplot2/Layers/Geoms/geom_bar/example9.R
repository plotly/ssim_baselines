df <- data.frame(x = rep(c(2.9, 3.1, 4.5), c(5, 10, 4)))
p <-  ggplot(df, aes(x)) + geom_histogram(binwidth = 0.5)
