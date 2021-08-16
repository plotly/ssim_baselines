p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + geom_hline(yintercept = 20)
