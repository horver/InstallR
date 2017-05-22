InstallLibsScript <- function(files, load = TRUE) {
  contents <- sapply(files, function(file) readLines(file, file.size(file)))
  libs <- c(gsub("library\\((.*)\\)", "\\1", contents)[grep("library", contents), ],
            gsub("require\\((.*)\\)", "\\1", contents)[grep("require", contents), ])
  libs <- gsub("[^[:alnum:]]", "", libs)
  InstallLibs(libs, load)
}
