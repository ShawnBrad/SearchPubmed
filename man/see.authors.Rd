\name{see.authors}
\alias{see.authors}
\title{see.authors}
\description{
Extract author information from a saved search.
}
\usage{
see.authors(search = NULL, results = NULL, index = 'article.titles')
}
\arguments{
\item{search}{a string or regular expression to identify paper to open in search results}
\item{results}{saved search results from a search.pubmed( ) call}
\item{index}{results column to search in saved search results}
}
\value{
tibble
}
\examples{
## save search
#saved.search <- search.pubmed(term = 'baby')

##see authors from article with 'Postnatal' title
#see.authors('Postnatal', results = saved.search)

## see authors from article with "Children's" in abstract
#see.authors("Children's", results = saved.search, index = 'article.abstracts')
}

