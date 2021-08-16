p <-  ggplot(economics_long, aes(date, value01)) +
  geom_line(aes(linetype = variable))
