#scrape functions
# Get all titles
get.article.title <- function(article) {
  article %>%
    xml_nodes(xpath =  './/ArticleTitle') %>%
    xml_text() %>%
    return()
}



# Get abstracts
get.article.abstracts <- function(article){
  article %>%
    xml_nodes(xpath =  './/Abstract') %>%
    xml_text() %>%
    return()
}

# Get Authors
# list of tibbles
get.article.authors <- function(article){
  article %>%
  xml_nodes(xpath =  './/Article')  %>%
  map( .f = get.authors)%>%
    return()
  }


#Get journal
get.article.journal<-  function(article){
  article %>%
  xml_nodes(xpath =  './/Journal/Title') %>%
  xml_text() %>%
  return()
}

#Get pubdate
get.article.date <- function(article){
  article %>%
  xml_nodes(xpath =  './/ArticleDate') %>%
    xml_text()  %>%
    ymd() %>%
    return()
}

#Get article types
get_using_get.article.types <- function(article){
  article %>%
    xml_nodes(xpath =  './/Article') %>%
    map(.f = get.article.types) %>%
    unlist() %>%
    return()
}


