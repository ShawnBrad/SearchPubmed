get.url <- function(term = NULL, db = NULL, retmax = NULL, reldate = NULL,
                    fields = NULL, dates = NULL, sort = NULL ){
  if (is.null(term)) stop('A rearch query is required')
  base.url <- 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?'
  rettype<- 'abstract' #hardcode for now
  usehistory <- 'y' #hardcode

  #########
  # contruct url
  # set db
  if (!is.null(db)) url <- paste0(base.url,'&db=',db)
  #set number of records
  if (!is.null(retmax)){
    if (retmax > 1e5) (retmax = 1e5)
    url <- paste0(url,'&retmax=',retmax)
  } 
  # set date filter
  if ((!is.null(reldate)) & is.null(dates)) url <- paste0(url,'&reldate=',reldate)
  if (!is.null(dates) ) url <- paste0(url,'&mindate=',dates[1],'&maxdate=',dates[2])
  if (! is.null(sort)) url <- paste0(url, '&sort=',param.check.sort(sort))
   # set search term
  term <- term %>%
  str_replace_all(pattern = '\\s+',replacement = '+')

  url <- paste0(url,'&term=',term)
  if (! is.null(fields)) url <- paste0(url,param.check.field(fields))

  out.url <- paste0(url,'&usehistory=',usehistory)
  return(out.url)
  }







