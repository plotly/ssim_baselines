plot <- ggplot(mpg, aes(displ, hwy)) + geom_point()
p <-    
 plot + theme(
  panel.background = element_rect(fill = "white"),
  plot.margin = margin(2, 2, 2, 2, "cm"),
  plot.background = element_rect(
    fill = "grey90",
    colour = "black",
    size = 1
  )
)
