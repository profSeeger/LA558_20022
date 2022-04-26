library(leaflet)
library(tidyverse)

#rstudio.github.io/leaflet

leaflet() %>%
    addTiles()


#Over 150 Tile Providers in Leaflet. Show only the first 7
names(providers)
names(providers)[1:7]

#Filter to show all openStreetMap Tiles
names(providers)[str_detect(names(providers), "OpenStreetMap")]

#Filter to show all Esri  named Tiles
names(providers)[str_detect(names(providers), "Esri")]

#Filter to show all "black and white named "Grey" Tiles
names(providers)[str_detect(names(providers), "Grey")]



#Change the background tiles
leaflet() %>%
   #  addTiles()  #Don't use the default tiles
#    addProviderTiles("OpenStreetMap.BlackAndWhite")  # This will NOT Work!
    addProviderTiles("Esri")

#geocoding
# to get the coordinates of a specific address such as my office, you can use
library(ggmap)
geocode("2321 North Loop Drive, Ames, IA 50010")
#However ggmap now requires an API key ...
#ggmap cheatsheet:  https://www.nceas.ucsb.edu/sites/default/files/2020-04/ggmapCheatsheet.pdf
#https://github.com/dkahle/ggmap
#


leaflet() %>%
    #  addTiles()  #Don't use the default tiles
    #    addProviderTiles("OpenStreetMap.BlackAndWhite")  # This will NOT Work!
    addProviderTiles("Esri.WorldGrayCanvas")

