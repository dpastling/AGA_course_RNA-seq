#!/usr/bin/env Rscript

require(knitr)
require(markdown) 
knit('$RMDFILE.rmd', '$RMDFILE.md')
markdownToHTML('$RMDFILE.md', '$RMDFILE.html', options=c('use_xhml'))"

system("pandoc -s example-r-markdown.html -o example-r-markdown.pdf")
