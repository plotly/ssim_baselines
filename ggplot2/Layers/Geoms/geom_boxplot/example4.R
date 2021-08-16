p <- ggplot(mpg, aes(class, hwy))
p <-  p + geom_boxplot(varwidth = TRUE)
