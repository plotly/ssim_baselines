p <-   
 ggplot(mtcars, aes(mpg, factor(cyl))) +
  geom_violin()
