plot <- ggplot(mpg, aes(displ, hwy)) + geom_point()
p <-    
 plot + theme(
  panel.background = element_blank(),
  axis.text = element_blank()
)
