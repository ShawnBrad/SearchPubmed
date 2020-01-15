open.article <- function( results = NULL, search = NULL, index = 'article.titles'){
  if (!is.null(search)){
    if (is.null(results)) stop('result table not provided ')

    indx <- results %>%
      pull(index) %>%
      str_which(search)

    if (is.null(indx)) stop("could not find matching search in index")

    record.id <- results[indx,] %>%
      pull(article.pubmedID)

    #if( length(record.id) > 1) (warning( 'search matched multiple records, using the first match'))
   # record.id <-  record.id[1]
    paste0('https://www.ncbi.nlm.nih.gov/pubmed/',record.id) %>%
      browseURL()

  }
}
