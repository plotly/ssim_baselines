(d <- ggplot(subset(diamonds, carat > 1), aes(cut, clarity)) +
      geom_jitter())
p <-    
 d +
  scale_x_discrete(
    "Cut",
    labels = c(
      "Fair" = "F",
      "Good" = "G",
      "Very Good" = "VG",
      "Perfect" = "P",
      "Ideal" = "I"
    )
  )
