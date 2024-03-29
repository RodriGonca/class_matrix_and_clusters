# clearing everything before starting -----------------------------------------
# clear environment and memory
rm(list=ls())
invisible(gc())

# clear console screen
cat("\014")

# clear plots
while (!is.null(dev.list()))  
  dev.off()

# setting the environment -----------------------------------------------------
options(encoding = "UTF-8")

info.username  <- Sys.info()[["user"]]
info.sysname   <- Sys.info()[["sysname"]]
info.machine   <- Sys.info()[["machine"]]
info.encoding  <- getOption("encoding")
directoryPath  <- dirname(rstudioapi::getSourceEditorContext()$path)
directoryPath  <- stringr::str_replace(directoryPath, "/src/datapreparation", "")

setwd(directoryPath)
getwd()
