test_that("install_from_script::Install libs and don't load", {
  skip("Test TRAVIS")
  libs <- c("RUnit", "acepack", "AICcmodavg", "nlme")
  install_from_script("example/example.R", load = FALSE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_false(lib %in% devtools::loaded_packages()[, 1])
  }
})

test_that("install_from_script::Install libs and load", {
  skip("Test TRAVIS")
  libs <- c("RUnit", "acepack", "AICcmodavg", "nlme")
  install_from_script("example/example.R", load = FALSE)
  for (lib in libs) {
    expect_true(lib %in% utils::installed.packages()[, 1])
    expect_true(lib %in% devtools::loaded_packages()[, 1])
  }
})
