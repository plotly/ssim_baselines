p <- ggplot(mpg, aes(class, hwy))
p <-  p + geom_boxplot(outlier.shape = NA) + geom_jitter(width = 0.2)
