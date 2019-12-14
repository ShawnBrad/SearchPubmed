library(tidyverse)
library(lubridate)
library(xml2)
library(rvest)
library(httr)



saved.search <- search.pubmed(term = 'cell')

open.article('Postnatal', results = saved.search)



open.article("Children's", results = saved.search, index = 'article.abstracts')


