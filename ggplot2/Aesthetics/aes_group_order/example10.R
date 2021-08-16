p <- p + geom_line(aes(group = Subject))
p <-  p + geom_smooth(aes(group = Subject), method = "lm", se = FALSE)
