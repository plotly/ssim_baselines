m <-
  ggplot(mpg, aes(displ, 1 / hwy)) +
  geom_point()
q10 <- seq(0.05, 0.95, by = 0.05)
p <-  m + geom_quantile(quantiles = q10)
