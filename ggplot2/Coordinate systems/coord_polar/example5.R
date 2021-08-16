df <- data.frame(
  variable = c("does not resemble", "resembles"),
  value = c(20, 80)
)
p <-    
 ggplot(df, aes(x = "", y = value, fill = variable)) +
  geom_col(width = 1) +
  scale_fill_manual(values = c("red", "yellow")) +
  coord_polar("y", start = pi / 3) +
  labs(title = "Pac man")
