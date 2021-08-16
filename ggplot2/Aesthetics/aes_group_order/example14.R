p <- ggplot(nlme::Oxboys, aes(Occasion, height)) + geom_boxplot()
p <-  p + geom_line(aes(group = Subject), colour = "blue")
