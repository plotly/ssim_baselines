(d <- ggplot(subset(diamonds, carat > 1), aes(cut, clarity)) +
      geom_jitter())
p <-  d + xlim("Fair","Ideal", "Good")
