m <-
  ggplot(mpg, aes(displ, 1 / hwy)) +
  geom_point()
p <-  m + geom_quantile(method = "rqss", lambda = 0.1)
