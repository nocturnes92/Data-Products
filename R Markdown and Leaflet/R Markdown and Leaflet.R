library(leaflet)
library(dplyr)

# Create map and add makers
mymap <- leaflet() %>% addTiles() %>%
        addMarkers(lat=40.01077, lng=116.39204, 
                   popup="Olympic Forest Park")
mymap

# Generate more makers
set.seed(2021-04-01)
df <- data.frame(lat = runif(100, min = 39.91, max = 40.11),
                 lng = runif(100, min = 116.29, max = 116.49))
df %>% 
        leaflet() %>%
        addTiles() %>%
        addMarkers()

# Make clusters 

df %>% 
        leaflet() %>%
        addTiles() %>%
        addMarkers(clusterOptions = markerClusterOptions())
