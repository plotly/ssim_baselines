d <- ggplot(diamonds, aes(carat, depth, z = price))
p <-  d + stat_summary_2d(fun = function(x) sum(x^2))
