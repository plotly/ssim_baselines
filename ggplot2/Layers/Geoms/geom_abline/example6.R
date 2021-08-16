p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
coef(lm(mpg ~ wt, data = mtcars))
p <-  p + geom_abline(intercept = 37, slope = -5)
