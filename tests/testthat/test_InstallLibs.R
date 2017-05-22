test_that("InstallLibs::Install libs", {
  libs <- c("mgcv", "caret")
  InstallLibs(libs, load = FALSE)
  for (lib in libs)
    expect_true(lib %in% utils::installed.packages()[, 1])
})

test_that("InstallLibs::Install libs and don't load", {
  libs <- c("mgcv", "caret")
  InstallLibs(libs, load = FALSE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_false(lib %in% devtools::loaded_packages()[, 1])
  }
})

test_that("InstallLibs::Install libs and load", {
  libs <- c("mgcv", "caret")
  InstallLibs(libs, load = TRUE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_true(lib %in% devtools::loaded_packages()[, 1])
  }
})
