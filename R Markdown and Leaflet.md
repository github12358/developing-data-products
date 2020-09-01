#R Markdown and Leaflet 1 sep 2020

```r
library(leaflet)
# Create map for the yellow cane tower 30.5415,114.2915
Map <- leaflet() %>%
  addTiles() %>%   
  addMarkers(lat=30.5415, lng=114.2915, popup="the beautiful yellow cane tower https://baike.baidu.com/item/%E9%BB%84%E9%B9%A4%E6%A5%BC/62298")
Map
```

![pic1](https://user-images.githubusercontent.com/69575052/91786987-09cae300-ec33-11ea-8173-44804885f48d.PNG)
![image](https://user-images.githubusercontent.com/69575052/91787859-0b95a600-ec35-11ea-9f90-93d4b364c5b4.png)
