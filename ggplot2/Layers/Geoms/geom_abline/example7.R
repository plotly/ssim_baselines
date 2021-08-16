p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + geom_smooth(method = "lm", se = FALSE)
