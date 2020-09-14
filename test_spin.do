/*+  setup +*/
/*R
library(Statamarkdown)
knitr::opts_chunk$set(engine.path=list(stata=find_stata()), comment=NA)
R*/

/*' The report begins here. '*/

/*+  example1, engine='stata' +*/
  sysuse auto
/* Stata comment */
  summarize

/*' You can use the ***usual*** Markdown.'*/
 