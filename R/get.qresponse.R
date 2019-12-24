get.qresponse <- function(url, retmax){
  rettype <- 'abstract'
  
  #if (GET(url)$status == 404) stop('Search failed, check search query format')
  
  parsed <- GET(url) %>%
    content(as = 'parsed')

  #get saved web environ from server
  wb.env <- xml_find_all(parsed, './/WebEnv') %>%
    xml_text()

  #get querykey from server
  q.key <- xml_find_all(parsed, './/QueryKey') %>%
    xml_text()

  # construct url to retrive abstracts
  r.url <- paste0('https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&query_key=',
                  q.key,'&WebEnv=',wb.env,'&retmax=',retmax ,'&rettype=',rettype)

  return(r.url)
}

