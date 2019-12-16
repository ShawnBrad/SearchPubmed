article.scrape <- function(parsed.xml){

  # takes a parsed response from an 'efetch' query
  # must run prior

    article.titles <- parsed.xml %>%
      get.article.title()


  # Get abstracts
  article.abstracts <- parsed.xml %>%
    get.article.abstracts()

  # Get Authors
  # list of tibbles
  article.authors <- parsed.xml %>%
    get.article.authors()

  #Get journal
  article.journal <- parsed.xml %>%
    get.article.journal()

  #Get pubdate
  article.date <- parsed.xml %>%
    get.article.date()

  #Get article types
   article.types <- parsed.xml %>%
     get_using_get.article.types()

  # Get pubmed id
  article.pubmedID <- xml_nodes(parsed.xml,xpath =  './/MedlineCitation/PMID') %>%
    xml_text()

  ### formatting output tibble
  tibble(article.date,
         article.titles,
         article.abstracts,
         article.types,
         article.journal,
         article.pubmedID,
         article.authors) %>%
    return()
}
