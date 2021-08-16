p <- ggplot(mpg, aes(displ, cty)) + geom_point()
df <- data.frame(displ = mean(mpg$displ), cty = mean(mpg$cty))
p <-    
 p +
  facet_grid(cols = vars(cyl)) +
  geom_point(data = df, colour = "red", size = 2)
