p <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
p <-   
 p +
  geom_rug(length = unit(0.05, "npc")) +
  scale_y_continuous(expand = c(0.1, 0.1))
