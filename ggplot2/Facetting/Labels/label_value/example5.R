mtcars$cyl2 <- factor(mtcars$cyl, labels = c("alpha", "beta", "gamma"))
p <- ggplot(mtcars, aes(wt, mpg)) + geom_point()
p <-  p + facet_grid(. ~ cyl2, labeller = label_parsed)
