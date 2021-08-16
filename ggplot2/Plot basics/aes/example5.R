cut3 <- function(x) cut_number(x, 3)
p <-  scatter_by(mtcars, cut3(disp), drat)
