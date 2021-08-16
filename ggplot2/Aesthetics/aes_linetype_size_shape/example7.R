p <- ggplot(mtcars, aes(wt, mpg))
p <-    
 p + geom_point(size = 2.5) +
  geom_hline(yintercept = 25, size = 3.5)
