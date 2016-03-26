library(jsonlite)
library(dplyr)

url <- "http://www.overview.hk/knowledge/street-search.php"
rawdata <- fromJSON(url)

streets <- data_frame(chi_street = rawdata$aaData[,1], eng_street = rawdata$aaData[,2], chi_region = rawdata$aaData[,3], eng_region = rawdata$aaData[,4])

write.csv(streets, file='streets.csv',row.names=FALSE)
saveRDS(streets, file='streets.rds')
