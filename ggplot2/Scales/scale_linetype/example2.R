base <- ggplot(economics_long, aes(date, value01))
p <-  base + geom_line(aes(linetype = variable))
