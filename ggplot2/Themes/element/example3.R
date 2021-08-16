plot <- ggplot(mpg, aes(displ, hwy)) + geom_point()
p <-    
 plot + theme(
  axis.line = element_line(arrow = arrow())
)
