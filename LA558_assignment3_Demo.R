## ----install-packages---------------------------------------------
install.packages(c("tidycensus", "tidyverse", "tigris", "sf"))
library(tidycensus)
library(tigris)
library(tidyverse)
library(sf)
options(tigris_use_cache = TRUE)
census_api_key('', overwrite=TRUE)



#The following example shows median household income from the 
#2015-2019 ACS for Census tracts in Boone County, Iowa
IowaMedianIncome <- get_acs(state = "IA", 
                            geography = "county", 
                            variables = "B19013_001", 
                            geometry = TRUE)
head(IowaMedianIncome)
st_write(IowaMedianIncome,"IowaMedianIncome.geojson")

#Same as above but no Geometry
IowaMedianIncome <- get_acs(state = "IA", 
                            geography = "county", 
                            variables = "B19013_001", 
                            geometry = FALSE)
head(IowaMedianIncome)
write.csv(IowaMedianIncome,"IowaMedianIncome.csv")





#The following example shows median household income from the 
#2015-2019 ACS for Townships in Boone County, Iowa
BooneMedianIncome <- get_acs(state = "IA", 
                             county = "Boone", 
                             geography = "county subdivision", 
                             variables = "B19013_001", 
                             geometry = TRUE)
head(BooneMedianIncome)
st_write(BooneMedianIncome,"BooneMedianIncome.geojson")


#Same as above but no Geometry
BooneMedianIncome <- get_acs(state = "IA", 
                             county = "Boone", 
                             geography = "county subdivision", 
                             variables = "B19013_001",
                             geometry = FALSE)
head(BooneMedianIncome)
write.csv(BooneMedianIncome,"BooneMedianIncome.csv")
