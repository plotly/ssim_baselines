m <- ggplot(economics, aes(unemploy/pop, psavert))
p <-  m + geom_path(aes(colour = as.numeric(date)))
