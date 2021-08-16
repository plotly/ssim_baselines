p <- ggplot(mtcars, aes(mpg, wt)) +
  geom_point()
old <- theme_set(theme_bw())
theme_set(old)
p
