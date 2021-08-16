cars <- ggplot(mtcars, aes(mpg, factor(cyl)))
p <- cars + stat_bin2d(aes(fill = after_stat(count)), binwidth = c(3,1))
