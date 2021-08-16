d <- ggplot(diamonds, aes(carat, depth, z = price))
p <-    
 if (requireNamespace("hexbin")) {
d + stat_summary_hex()
d + stat_summary_hex(fun = ~ sum(.x^2))
}
