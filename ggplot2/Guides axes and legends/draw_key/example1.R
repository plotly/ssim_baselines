p <- ggplot(economics, aes(date, psavert, color = "savings rate"))
p <-  p + geom_line(key_glyph = "timeseries")
