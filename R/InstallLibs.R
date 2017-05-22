#' Install then load libraries from vector
#'
#' @param libs A vector
#' @param load TRUE/FALSE
#' @return none
#' @examples
#' InstallLibs(c("caret"), TRUE)
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
