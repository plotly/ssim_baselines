p <- p +
  geom_rect(
    aes(NULL, NULL, xmin = start, xmax = end, fill = party),
    ymin = yrng[1], ymax = yrng[2], data = presidential
  )
p <-  p + scale_fill_manual(values = alpha(c("blue", "red"), .3))
