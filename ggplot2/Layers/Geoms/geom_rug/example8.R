p <- ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
p <-   
 p +
  geom_rug(outside = TRUE, sides = "tr") +
  coord_cartesian(clip = "off") +
  theme(plot.margin = margin(1, 1, 1, 1, "cm"))
