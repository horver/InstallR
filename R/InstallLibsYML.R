#' Install then load libraries from YAML file
#'
#' @param file YAML file path
#' @return none
#' @examples
#' InstallLibsYML("deps.yml")
InstallLibsYML <- function(file = "deps.yml") {
  libs <- yaml::yaml.load_file(file)
  InstallLibs(libs$deps, libs$load)
}
