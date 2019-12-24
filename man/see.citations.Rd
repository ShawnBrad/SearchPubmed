\name{see.citations}
\alias{see.citations}
\title{see.citations}
\description{
Extract author information from a saved search.
}
\usage{
see.citations(search = NULL, results = NULL, index = 'article.titles', ...)
}
\arguments{
\item{search}{a string or regular expression which identifies paper(s) to open in search results}
\item{results}{saved search results from a search.pubmed( ) call}
\item{index}{results column to search in saved search results}
\item{...}{optional arguments passed to rcrossref::cr_cn}
}
\value{
tibble
}
\examples{
## save search
#saved.search <- search.pubmed(term = 'baby')

##see citations from article with 'Postnatal' title
#see.citations('Postnatal', results = saved.search)

## see citations from article with "Children's" in abstract
#see.citations("Children's", results = saved.search, index = 'article.abstracts')

## see citations from article with "Children's" in abstract in text format
#see.citations("Children's", results = saved.search, index = 'article.abstracts', format = 'text')
}

