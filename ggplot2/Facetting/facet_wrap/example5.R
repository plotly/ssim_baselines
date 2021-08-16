mpg$class2 <- reorder(mpg$class, mpg$displ)
p <-  ggplot(mpg, aes(displ, hwy)) +
p <-    geom_point() +
p <-    facet_wrap(vars(class2))
