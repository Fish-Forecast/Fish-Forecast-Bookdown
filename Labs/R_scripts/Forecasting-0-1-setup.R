## ----include=FALSE, echo=FALSE-------------------------------------------
library(stringr)
# This is moving not copying for some reason
# file.copy("landings.RData",
#           "Labs/landings.RData",
#           overwrite = TRUE)
library(knitr)
library(rmarkdown)
files <- dir(pattern="^Forecasting.*Rmd$")
files <- str_sub(files,1,-5)
for(fil in files){
  infil = paste0(fil,".Rmd")
outfil = paste0("Labs/R_scripts/",fil,".R")
knit(infil, output = outfil, tangle=TRUE)
}

## ----eval=FALSE----------------------------------------------------------
## devtools::install_github("RVerse-Tutorials/RWorkflowsetup")

