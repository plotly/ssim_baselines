p <-    
 ggplot(economics_long, aes(date, value01, colour = variable)) +
  geom_line()
