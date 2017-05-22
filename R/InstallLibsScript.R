#' Install then load libraries from script file(s)
#'
#' @param files A vector with file names
#' @param load TRUE/FALSE
#' @return none
#' @examples
#' InstallLibsScript(c("file1.R", "file2.R"), TRUE)
#' InstallLibsScript("file.R", FALSE)
InstallLibsScript <- function(files, load = TRUE) {
  contents <- sapply(files, function(file) readLines(file, file.size(file)))
  libs <- c(gsub("library\\((.*)\\)", "\\1", contents)[grep("library", contents), ],
            gsub("require\\((.*)\\)", "\\1", contents)[grep("require", contents), ])
  libs <- gsub("[^[:alnum:]]", "", libs)
  InstallLibs(libs, load)
}
