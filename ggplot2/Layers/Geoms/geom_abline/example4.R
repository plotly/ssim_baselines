p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + geom_abline() # Can't see it - outside the range of the data
