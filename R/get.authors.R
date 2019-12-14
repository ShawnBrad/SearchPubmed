# function to gather all authors for an article
#into a tibble with last name,
#first name and initials

get.authors <- function(article){
  # takes as inbut a single xml_node set corresponding to an article
xml_nodes(article, xpath =  './/AuthorList/Author') %>%
  map_dfr( .f = get.name.info)

}


