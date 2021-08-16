d <- ggplot(diamonds, aes(cut))
p <-  d + stat_summary(aes(y = price), fun = "mean", geom = "bar")
