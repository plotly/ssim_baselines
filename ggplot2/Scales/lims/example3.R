p <-    
 ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  xlim(NA, 20)
