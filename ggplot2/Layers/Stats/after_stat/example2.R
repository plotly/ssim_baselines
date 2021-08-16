p <-    
 ggplot(mpg, aes(displ)) +
  geom_histogram(aes(y = after_stat(count / max(count))))
