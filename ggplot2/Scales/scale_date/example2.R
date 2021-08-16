last_month <- Sys.Date() - 0:29
df <- data.frame(
  date = last_month,
  price = runif(30)
)
base <- ggplot(df, aes(date, price)) +
  geom_line()
p <-  base + scale_x_date(date_breaks = "1 week", date_labels = "%W")
