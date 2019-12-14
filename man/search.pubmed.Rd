\name{search.pubmed}
\alias{search.pubmed}
\title{search.pubmed}
\description{
Searched pubmed for articles matching provided queries
}
\usage{
search.pubmed(term = NULL, db = 'pubmed', retmax = '100',fields = NULL, reldate = '365', dates = NULL, sort = NULL)
}
\arguments{
\item{term}{search phrase or phrases seperated by white space}
\item{db}{entrez database to query, defaults to pubmed}
\item{retmax}{maximum records to return}
\item{field}{field to limit search phrase to}
\item{reldate}{number of days from current to limit search to}
\item{dates}{vector of length 2 with dates to limit search to in YYYY/MM/DD or YYYY/MM or YYYY format}
\item{sort}{method to sort results,  c('most+recent', 'journal', 'pub+date', 'relevance','title', 'author') }

}

\examples{
## simple search
#baby.search <- search.pubmed(term = 'baby')

## return at most 1000 records
#baby.search_1000 <- search.pubmed(term = 'baby', retmax = 1000)

## return at most 1000 records published in the last 30 days
#baby.search_1000_last30 <- search.pubmed(term = 'baby', retmax = 1000, reldate = 30)
}

