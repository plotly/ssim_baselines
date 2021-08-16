p <-    
 if (require("maps")) {

ia <- map_data("county", "iowa")
mid_range <- function(x) mean(range(x))
seats <- do.call(rbind, lapply(split(ia, ia$subregion), function(d) {
  data.frame(lat = mid_range(d$lat), long = mid_range(d$long), subregion = unique(d$subregion))
}))

ggplot(ia, aes(long, lat)) +
  geom_polygon(aes(group = group), fill = NA, colour = "grey60") +
  geom_text(aes(label = subregion), data = seats, size = 2, angle = 45)
}
