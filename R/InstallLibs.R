InstallLibs <- function(libs, load = TRUE) {
  sapply(libs,
         function(lib) {
           if (!(lib %in% utils::installed.packages()[, 1]))
             utils::install.packages(lib)
           if (load)
             library(lib, character.only = TRUE)
         }
  )
}
