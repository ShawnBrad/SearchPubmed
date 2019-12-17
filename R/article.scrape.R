article.scrape <- function(parsed.xml){

  # takes a parsed response from an 'efetch' query
  # must run prior

    article.titles <- parsed.xml %>%
      get.article.title()
    if (is.null(article.titles)) article.titles = NA


  # Get abstracts
  article.abstracts <- parsed.xml %>%
    get.article.abstracts()
  if (is.null(article.abstracts)) article.abstracts = NA

  # Get Authors
  # list of tibbles
  article.authors <- parsed.xml %>%
    get.article.authors()

  #Get journal
  article.journal <- parsed.xml %>%
    get.article.journal()
  if (is.null(article.journal)) article.journal = NA

  #Get pubdate
  article.date <- parsed.xml %>%
    get.article.date()
  if (is.null(article.date)) article.date = NA

  #Get article types
   article.types <- parsed.xml %>%
     get_using_get.article.types()
   if (is.null(article.types)) article.types = NA

  # Get pubmed id
  article.pubmedID <- xml_nodes(parsed.xml,xpath =  './/MedlineCitation/PMID') %>%
    xml_text()
  if (is.null(article.pubmedID)) article.pubmedID = NA

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
