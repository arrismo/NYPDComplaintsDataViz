library(curl)
library(jsonlite)
library(dplyr)
res <- curl_fetch_memory("https://data.cityofnewyork.us/resource/qgea-i56i.json")
(nypd_data <- jsonlite::prettify(rawToChar(res$content)))
(nypd_data <- jsonlite::fromJSON(nypd_data) %>% 
    as.data.frame())


