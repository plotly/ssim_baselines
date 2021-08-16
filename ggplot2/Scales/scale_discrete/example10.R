p <-    
 ggplot(mpg, aes(reorder(manufacturer, displ), cty)) +
  geom_point()
