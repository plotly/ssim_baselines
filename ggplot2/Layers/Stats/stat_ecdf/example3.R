df <- data.frame(
  x = c(rnorm(100, 0, 3), rnorm(100, 0, 10)),
  g = gl(2, 100)
)
p <-   
 ggplot(df, aes(x, colour = g)) +
  stat_ecdf()
