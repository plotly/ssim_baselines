p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-  p + annotate("text", x = 2:3, y = 20:21, label = c("my label", "label 2"))
