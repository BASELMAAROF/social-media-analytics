library(quanteda)
library(devtools)
library(tm)

devtools::install_github('quanteda/quanteda.corpora')
library(quanteda.corpora)


####reading data & making corpus

iming_corpus=corpus(data_char_ukimmig2010)
(iming_corpus)


## Create DFM

iming_dfm=dfm(iming_corpus,remove = stopwords("english"),
              stem = T,remove_punct=T,remove_numbers=T)

View(iming_dfm)
