p <-   
 ggplot(faithful, aes(waiting, eruptions)) +
  geom_point() +
  stat_ellipse()
