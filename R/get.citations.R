# function to get formatted ref info 
get.citations <- function(pubmed.ids, ...){
  # set base url for id retrival 
  retrival.url <- 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id='
  
  # collapse list of ids to ',' separated string
  pubmed.ids <- str_flatten(pubmed.ids, collapse = ',')
  # construct url
  retrival.url <- paste0(retrival.url,pubmed.ids)
  # querry url and get results
  ids <- retrival.url %>%
    GET()  %>%
    content( as = 'parsed') %>%
    str_extract_all('doi \".*\"') %>%
    unlist(use.names = F) %>%
    str_extract('\\w+\\w.\\w.*\\w') 
  
  # call cross ref api via rcross ref
  cr_cn(ids, ...) %>%
    return()
}




