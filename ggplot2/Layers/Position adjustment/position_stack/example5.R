series <- data.frame(
  time = c(rep(1, 4),rep(2, 4), rep(3, 4), rep(4, 4)),
  type = rep(c('a', 'b', 'c', 'd'), 4),
  value = rpois(16, 10)
)
p <-    
 ggplot(series, aes(time, value)) +
  geom_area(aes(fill = type))
