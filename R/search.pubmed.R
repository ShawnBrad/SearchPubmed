search.pubmed <- function(term = NULL, db = 'pubmed', retmax = '100', reldate = '365',
                          fields = NULL, dates = NULL, sort = NULL ){
  get.url(term , db , retmax , reldate,
          fields, dates, sort) %>%
    get.qresponse(retmax) %>%
    GET() %>%
    content( as = 'parsed') %>%
    xml_children() %>%
    map_dfr(.f = article.scrape)  %>% # scrape each article one by one
    # slower but more robust, handles missing data well.

    return()
}



