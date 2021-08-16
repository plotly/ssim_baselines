recent <- economics[economics$date > as.Date("2013-01-01"), ]
p <-  ggplot(recent, aes(date, unemploy)) + geom_line()
