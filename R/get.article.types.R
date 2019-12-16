get.article.types <- function(article){
  # input is article xml_node set, will return comma
  #separated lists of article types
 out <-  xml_nodes(article,xpath =  './/PublicationTypeList/PublicationType') %>%
    xml_text() %>%
    str_flatten(collapse =  ',') 
 
 if (is.null(out)) (out =='NA')
    return(out)
}
