dmod <- lm(price ~ cut, data = diamonds)
cut <- unique(diamonds$cut)
cuts_df <- data.frame(
  cut,
  predict(dmod, data.frame(cut), se = TRUE)[c("fit", "se.fit")]
)
p <-    
 ggplot(cuts_df) +
  aes(
   x = cut,
   y = fit,
   ymin = fit - se.fit,
   ymax = fit + se.fit,
   colour = cut
  ) +
  geom_pointrange()
