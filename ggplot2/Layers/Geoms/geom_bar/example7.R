df <- data.frame(trt = c("a", "b", "c"), outcome = c(2.3, 1.9, 3.2))
p <-    
 ggplot(df, aes(trt, outcome)) +
  geom_point()
