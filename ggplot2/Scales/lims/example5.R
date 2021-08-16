small <- subset(mtcars, cyl == 4)
big <- subset(mtcars, cyl > 4)
p <-    
 ggplot(big, aes(mpg, wt, colour = factor(cyl))) +
  geom_point() +
  lims(colour = c("4", "6", "8"))
