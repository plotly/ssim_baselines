df <- data.frame(x = rnorm(5000), y = rnorm(5000))
p  <- ggplot(df, aes(x,y))
p <-  p + geom_point(alpha = 0.5)
