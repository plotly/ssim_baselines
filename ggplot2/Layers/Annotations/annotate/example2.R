p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p <-  p + annotate("text", x = 2:5, y = 25, label = "Some text")
