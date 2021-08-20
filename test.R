library(curl)
library(jsonlite)
library(dplyr)
res <- curl_fetch_memory("https://data.cityofnewyork.us/resource/qgea-i56i.json")
(myjsondata <- jsonlite::prettify(rawToChar(res$content)))
(myjsondata_df <- jsonlite::fromJSON(myjsondata) %>% 
    as.data.frame())

