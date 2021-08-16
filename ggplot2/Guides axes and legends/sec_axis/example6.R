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
  scale_x_datetime("
    GMT",
    date_labels = "%b %d %I %p",
    sec.axis = sec_axis(
      ~ . + 8 * 3600,
      name = "GMT+8",
      labels = scales::time_format("%b %d %I %p")
    )
  )
