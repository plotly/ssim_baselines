last_month <- Sys.Date() - 0:29
df <- data.frame(
  date = last_month,
  price = runif(30)
)
base <- ggplot(df, aes(date, price)) +
  geom_line()
p <-  base + scale_x_date(limits = c(Sys.Date() - 7, NA))
