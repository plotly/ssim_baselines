df <- data.frame(x = 1:5, y = (1:5) ^ 2)
p <-  
 ggplot(df, aes(x, y)) +
  geom_area()
