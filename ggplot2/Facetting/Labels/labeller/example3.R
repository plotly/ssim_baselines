capitalize <- function(string) {
  substr(string, 1, 1) <- toupper(substr(string, 1, 1))
  string
}
p2 <- ggplot(msleep, aes(x = sleep_total, y = awake)) + geom_point()
p <-  p2 + facet_grid(vore ~ conservation, labeller = labeller(vore = capitalize))
