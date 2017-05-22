InstallLibsYML <- function(file = "deps.yml") {
  libs <- yaml::yaml.load_file(file)
  InstallLibs(libs$deps, libs$load)
}
