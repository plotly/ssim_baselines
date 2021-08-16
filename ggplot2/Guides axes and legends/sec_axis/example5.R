df <- data.frame(
  dx = seq(
    as.POSIXct("2012-02-29 12:00:00", tz = "UTC"),
    length.out = 10,
    by = "4 hour"
  ),
  price = seq(20, 200000, length.out = 10)
 )
p <-    
 ggplot(df, aes(x = dx, y = price)) +
  geom_line() +
  scale_x_datetime(
    "Date",
    date_labels = "%b %d",
    date_breaks = "6 hour",
    sec.axis = dup_axis(
      name = "Time of Day",
      labels = scales::time_format("%I %p")
    )
  )
