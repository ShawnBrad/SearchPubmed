get.name.info <- function(author){
  # takes a xml_nodeset of authors and scrapes
  #the names from each author and combines them into a tibble
  last.name <- xml_nodes(author,xpath =  './/LastName') %>%
    html_text()

  fore.name <- xml_nodes(author,xpath =  './/ForeName') %>%
    html_text()

  initials <- xml_nodes(author,xpath =  './/Initials') %>%
    html_text()

  affiliation <- xml_nodes(author,xpath =  './/AffiliationInfo/Affiliation')%>%
    html_text() %>%
    str_c( collapse = "|")

  return(tibble(last.name,fore.name,initials,affiliation))
}


