last_month <- Sys.Date() - 0:59
df <- data.frame(
  date = last_month,
  price = c(rnorm(30, mean = 15), runif(30) + 0.2 * (1:30))
)
p <- ggplot(df, aes(date, price)) +
  geom_line() +
  stat_smooth()
p <-  p + coord_cartesian(xlim =c(Sys.Date() - 30, NA), ylim = c(10, 20))
