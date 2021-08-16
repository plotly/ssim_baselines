p <- ggplot(mtcars) +
  geom_point(aes(disp, mpg, size = hp)) +
  scale_size_binned()
p <-  p + guides(size = guide_bins(axis = FALSE))
