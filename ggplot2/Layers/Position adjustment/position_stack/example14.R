df <- tibble::tribble(
  ~x, ~y, ~grp,
  "a", 1,  "x",
  "a", 2,  "y",
  "b", 1,  "x",
  "b", 3,  "y",
  "b", -1, "y"
)
p <-    
 ggplot(data = df, aes(x, y, group = grp)) +
  geom_col(aes(fill = grp), position = position_stack(reverse = TRUE)) +
  geom_hline(yintercept = 0)
