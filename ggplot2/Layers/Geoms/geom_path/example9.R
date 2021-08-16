c <- ggplot(economics, aes(x = date, y = pop))
p <-  c + geom_line(arrow = arrow())
