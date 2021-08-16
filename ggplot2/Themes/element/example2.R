plot <- ggplot(mpg, aes(displ, hwy)) + geom_point()
p <-    
 plot + theme(
  axis.text = element_text(colour = "red", size = rel(1.5))
)
