d <- ggplot(diamonds, aes(carat, depth, z = price))
p <-  d + stat_summary_2d(fun = "quantile", fun.args = list(probs = 0.1))
