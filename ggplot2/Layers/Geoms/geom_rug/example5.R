p <-   
 ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  geom_rug()
