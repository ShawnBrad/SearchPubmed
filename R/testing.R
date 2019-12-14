# library(tidyverse)
# library(lubridate)
# library(xml2)
# library(rvest)
# library(httr)

library(devtools)

library(dplyr)
install_github("ShawnBrad/SearchPubmed", force = T)
library(PubSearch)


saved.search <- search.pubmed(term = 'cell')

open.article('Postnatal', results = saved.search)



open.article("Children's", results = saved.search, index = 'article.abstracts')


