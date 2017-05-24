#' Install then load libraries from script file(s)
#'
#' @param files A vector with file names
#' @param load TRUE/FALSE
#' @return none
#' @examples
#' #install_from_script(c("file1.R", "file2.R"), TRUE)
#' #install_from_script("file.R", FALSE)
install_from_script <- function(files, load = TRUE) {
  contents <- sapply(files, function(file) readLines(file, file.size(file)))
  libs <- c(gsub("library\\((.*)\\)", "\\1", contents)[grep("library", contents), ],
            gsub("require\\((.*)\\)", "\\1", contents)[grep("require", contents), ])
  libs <- gsub("[^[:alnum:]]", "", libs)
  install_from_list(libs, load)
}
