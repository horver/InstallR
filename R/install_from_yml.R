#' Install then load libraries from YAML file
#'
#' @param file YAML file path
#' @return none
#' @examples
#' #install_from_yml("deps.yml")
install_from_yml <- function(file = "deps.yml") {
  libs <- yaml::yaml.load_file(file)
  install_from_list(libs$deps, libs$load)
}
