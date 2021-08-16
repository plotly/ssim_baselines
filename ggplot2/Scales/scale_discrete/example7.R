(d <- ggplot(subset(diamonds, carat > 1), aes(cut, clarity)) +
      geom_jitter())
p <-  d + ylim("I1", "IF")
