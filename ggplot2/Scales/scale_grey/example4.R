miss <- factor(sample(c(NA, 1:5), nrow(mtcars), replace = TRUE))
p <-    
 ggplot(mtcars, aes(mpg, wt)) +
  geom_point(aes(colour = miss)) +
  scale_colour_grey()
