p <-    
 if (require("ggplot2movies")) {
m <- ggplot(movies, aes(rating))
m + geom_histogram(binwidth = 0.1)
m +
  geom_histogram(aes(weight = votes), binwidth = 0.1) +
  ylab("votes")
m +
 geom_histogram() +
 scale_x_log10()
m +
  geom_histogram(binwidth = 0.05) +
  scale_x_log10()
m +
  geom_histogram(boundary = 0) +
  coord_trans(x = "log10")
m +
  geom_histogram(boundary = 0) +
  coord_trans(x = "sqrt")
m <- ggplot(movies, aes(x = rating))
m +
  geom_histogram(binwidth = 0.5) +
  scale_y_sqrt()
}
