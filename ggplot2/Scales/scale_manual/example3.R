p <- ggplot(mtcars, aes(mpg, wt)) +
  geom_point(aes(colour = factor(cyl)))
cols <- c("8" = "red", "4" = "blue", "6" = "darkgreen", "10" = "orange")
p <-  p + scale_colour_manual(values = cols)
