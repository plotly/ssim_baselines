dsmall <- diamonds[sample(nrow(diamonds), 100), ]
(d <- ggplot(dsmall, aes(carat, price)) + geom_point(aes(shape = cut)))
levels(dsmall$cut) <- c("Fair", "Good", "Very Good", "Premium", "Ideal")
p <-  ggplot(dsmall, aes(price, carat)) + geom_point(aes(shape = cut))
