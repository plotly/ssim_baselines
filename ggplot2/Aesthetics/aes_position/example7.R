counts <- as.data.frame(table(x = rpois(100, 5)))
counts$x <- as.numeric(as.character(counts$x))
p <-  with(counts, plot(x, Freq, type = "h", lwd = 10))
