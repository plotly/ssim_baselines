huron <- data.frame(year = 1875:1972, level = as.vector(LakeHuron))
h <- ggplot(huron, aes(year))
p <-  h + geom_ribbon(aes(ymin=0, ymax=level))
