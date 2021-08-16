colours <- list(~class, ~drv, ~fl)
p <-    
 # Doesn't seem to do anything!
for (colour in colours) {
  ggplot(mpg, aes_(~ displ, ~ hwy, colour = colour)) +
    geom_point()
}
