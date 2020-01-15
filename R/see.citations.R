see.citations <- function( results = NULL ,search = NULL, index = 'article.titles', ...){
  
  if (!is.null(search)){
    if (is.null(results)) stop('result table not provided ')
    
    indx <- results %>%
      pull(index) %>%
      str_which(search)
    
    if (is.null(indx)) stop("could not find matching search in index")
    
    results[indx,] %>%
      pull(article.pubmedID) %>%
      get.citations(...) %>%
      return()
    
  }
}
