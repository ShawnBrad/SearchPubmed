# library(tidyverse)
# library(lubridate)
# library(xml2)
# library(rvest)
# library(httr)

library(devtools)

library(dplyr)
usethis::edit_r_environ()
install_github("ShawnBrad/SearchPubmed", force = T)
library(PubSearch)


saved.search <- search.pubmed(term = 'cell',retmax = 200, dates = c(2015,2019))

open.article('Postnatal', results = saved.search)




filter.tags <-  readRDS('R/sysdata.rds')
use_data(filter.tags, filter.tags, internal = TRUE) 


GITHUB_PAT <- 'c0f2a832805c5fa7f6a0d0448f0a7e635432d499'


usethis::edit_r_environ(scope = 'user',) 




usethis::edit_r_environ()



