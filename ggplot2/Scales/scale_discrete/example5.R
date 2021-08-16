(d <- ggplot(subset(diamonds, carat > 1), aes(cut, clarity)) +
      geom_jitter())
p <-  d + scale_x_discrete(limits = c("Fair","Ideal"))
