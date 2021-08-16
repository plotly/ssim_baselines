p <-    
 if (require("maps")) {
ggplot(choro, aes(long, lat)) +
  geom_polygon(aes(group = group, fill = assault / murder)) +
  coord_map("albers",  lat0 = 45.5, lat1 = 29.5)
}
