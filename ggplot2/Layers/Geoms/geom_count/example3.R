p <-    
 ggplot(mpg, aes(cty, hwy)) +
 geom_count() +
 scale_size_area()
