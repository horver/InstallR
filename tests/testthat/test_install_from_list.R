test_that("install_from_script::Install libs", {
  libs <- c("car", "ggplot2")
  install_from_list(libs, load = FALSE)
  for (lib in libs)
    expect_true(lib %in% utils::installed.packages()[, 1])
})

test_that("install_from_script::Install libs and don't load", {
  libs <- c("mgcv", "lme4")
  install_from_list(libs, load = FALSE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_false(lib %in% devtools::loaded_packages()[, 1])
  }
})

test_that("install_from_script::Install libs and load", {
  libs <- c("gamm4", "MuMIn")
  install_from_list(libs, load = TRUE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_true(lib %in% devtools::loaded_packages()[, 1])
  }
})
