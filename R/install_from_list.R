#' Install then load libraries from vector
#'
#' @param libs A vector
#' @param load TRUE/FALSE
#' @return none
#' @examples
#' #install_from_list(c("caret"), TRUE)
install_from_list <- function(libs, load = TRUE) {
  sapply(libs,
         function(lib) {
           if (!(lib %in% utils::installed.packages()[, 1]))
             utils::install.packages(lib)
           if (load)
             library(lib, character.only = TRUE)
         }
  )
}
