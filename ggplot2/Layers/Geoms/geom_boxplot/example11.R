p <- ggplot(mpg, aes(class, hwy))
p <-    
 ggplot(diamonds, aes(carat, price)) +
  geom_boxplot(aes(group = cut_width(carat, 0.25)), outlier.alpha = 0.1)
