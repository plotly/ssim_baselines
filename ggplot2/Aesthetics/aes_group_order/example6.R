p <- ggplot(mtcars, aes(factor(cyl)))
p <-  p + geom_bar(aes(fill = factor(vs)))
