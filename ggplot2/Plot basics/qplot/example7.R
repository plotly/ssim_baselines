mod <- lm(mpg ~ wt, data = mtcars)
p <-  qplot(resid(mod), fitted(mod))
