#R Markdown and Leaflet 1 sep 2020

```r
library(leaflet)
# Create map for the yellow cane tower 30.5443629,114.3022023
Map <- leaflet() %>%
  addTiles() %>%   
  addMarkers(lat=-30.5443629, lng=114.3022023, popup="the beautiful yellow cane tower https://baike.baidu.com/item/%E9%BB%84%E9%B9%A4%E6%A5%BC/62298")
```

![pic1](https://user-images.githubusercontent.com/69575052/91786987-09cae300-ec33-11ea-8173-44804885f48d.PNG)