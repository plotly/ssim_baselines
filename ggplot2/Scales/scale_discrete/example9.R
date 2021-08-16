p <-    
 ggplot(mpg, aes(reorder(manufacturer, cty), cty)) +
  geom_point()
