p <- ggplot(mpg, aes(class, hwy))
p <-  p + geom_boxplot(outlier.colour = "red", outlier.shape = 1)
