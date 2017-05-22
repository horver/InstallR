test_that("InstallLibsScript::Install libs and don't load", {
  skip("Test TRAVIS")
  libs <- c("RUnit", "caret", "AICcmodavg", "mgcv")
  InstallLibsScript("example/example.R", load = FALSE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_false(lib %in% devtools::loaded_packages()[, 1])
  }
})

test_that("InstallLibsScript::Install libs and load", {
  skip("Test TRAVIS")
  libs <- c("RUnit", "caret", "AICcmodavg", "mgcv")
  InstallLibsScript("example/example.R", load = FALSE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_true(lib %in% devtools::loaded_packages()[, 1])
  }
})
