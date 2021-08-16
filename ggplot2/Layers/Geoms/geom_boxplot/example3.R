p <- ggplot(mpg, aes(class, hwy))
p <-  p + geom_boxplot(notch = TRUE)
