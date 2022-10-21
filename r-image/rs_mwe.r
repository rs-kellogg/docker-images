LoadLibs <- function() {
   #     make sure we have all packages
   list.of.packages <- c(
      # importing data
      "readxl", "haven", "RCurl", # "R.matlab",
      # math and stats
      "evd",
      # querying WRDS
      "RPostgres", 
      # Project management
      "targets", "tarchetypes", "qs",
      # markdown
      "knitr", "kableExtra", "skimr", 
      # data manipulation
      "broom", "tidyverse", "janitor", "zoo", "lubridate", "fuzzyjoin",
      # estimation
      "gmm",  "AER", "sandwich", "fixest", "lfe", "np", "estimatr",
      # Synthetic controls and TWFE
      "gsynth", "augsynth", "panelView", "kbal", "tjbal", 
      "did", "staggered",
      # Network graphs
      "network", "statnet", "networkD3", 
      # text analysis
      "tm", "wordcloud", 
      # report results
      "stargazer", "modelsummary", "scales", "latex2exp", "psych",
      # plotting
      "ggplot2", "ggExtra", "gridExtra", "GGally", "ggrepel", "patchwork", 
      "grid", "plotly", "corrplot", "coefplot", "scales", "rayshader", 
      "DiagrammeR", "DiagrammeRsvg", "xml2", 
      "rsvg", "svglite", "magick"
   )
   new.packages <- list.of.packages[
      !(list.of.packages %in% installed.packages()[,"Package"])
   ]
   if(length(new.packages)) {
       print('new packages:')
       print(new.packages)
      #install.packages(new.packages, repos="http://cran.rstudio.com/")
   }
   
   #     load packages
   invisible(
      sapply(X = list.of.packages, FUN = require, character.only = TRUE)
   )
   
   #     cleanup
   rm(list.of.packages, new.packages)
}
   
LoadLibs()