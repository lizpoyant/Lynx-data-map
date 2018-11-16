library(spocc)
library(raster)
library(mapr)

lynx <- occ(query='Lynx rufus', from ='gbif')
df=as.data.frame(lynx$gbif$data$Lynx_rufus)
map_leaflet(lynx)


