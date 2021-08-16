mtcars2 <- transform(mtcars, mpg = ifelse(runif(32) < 0.2, NA, mpg))
p <-    
 ggplot(mtcars2, aes(wt, mpg)) +
  geom_point()
