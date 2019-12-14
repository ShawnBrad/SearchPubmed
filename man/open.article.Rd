\name{open.article}
\alias{open.article}
\title{open.article}
\description{
Open article from a saved search in browser.
}
\usage{
open.article(search = NULL, results = NULL, index = 'article.titles')
}
\arguments{
\item{search}{a string or regular expression to identify paper to open in search results}
\item{results}{saved search results from a search.pubmed( ) call}
\item{index}{results column to search in saved search results}
}

\examples{
## save search
##saved.search <- search.pubmed(term = 'baby')

## Open article with 'Postnatal' title
## open.article('Postnatal', results = saved.search)

## Open article with "Children's" in abstract
## open.article("Children's", results = saved.search, index = #'article.abstracts')
}

