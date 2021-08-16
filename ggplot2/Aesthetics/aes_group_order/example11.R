p <- p + geom_line(aes(group = Subject))
p <-  p + geom_smooth(aes(group = 1), size = 2, method = "lm", se = FALSE)
