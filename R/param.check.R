param.check.field <- function(fields){
  #for now modifying will be limited to the search
  #query until a simple method is found to
  #specify more complicated searches
  filter.tags <- readRDS('R/sysdata.rds')

  if (!is.null(fields)){
    if (sum(fields %in% names(filter.tags)) < 1){
      warning('None of the entered fields are supported, using defaults')
    }
    else {
      filter.tags[fields] %>%
        unlist(use.names = F) %>%
        str_flatten() %>%
        return()
    }
  }

}

param.check.dates <- function(dates){
  # check formating
  eval.dates = F
  if (str_c(dates[1]) != str_c(dates[2])) stop('min and max dates are not of the same format')

  if (str_count(dates)[1] == 4){
    eval.dates <- dates %>%
      str_detect('\\d\\d\\d') %>%
      sum() == 2
  }
  if (str_count(dates)[1] == 7){
    eval.dates <- dates %>%
      str_detect('\\d\\d\\d\\d/\\d\\d')  %>%
      sum() == 2
  }
  if (str_count(dates)[1] == 10){
    eval.dates <- dates %>%
      str_detect('\\d\\d\\d\\d/\\d\\d/\\d\\d')  %>%
      sum() == 2
  }
  if (!eval.dates) stop('dates not formatted correctly check min and max dates entered')
}

param.check.sort <- function(sort){
  sort.methods <- c('most+recent', 'journal', 'pub+date', 'relevance',
                    'title', 'author')
  sort.indx<- sort %in% sort.methods

  sort[sort.indx] %>%
    str_flatten(collapse = '+') %>%
    return()
}






