test_that("reset ini cache", {
  content <- read_ini("data_ini")
  expected_cache <- length(names(ini_cache)) > 0

  paws_reset_cache()

  expected_empty <- length(names(ini_cache)) == 0

  expect_true(expected_cache)
  expect_true(expected_empty)
})

# skip test if not on unix OS
test_that("reset os env cache", {
  skip_if(.Platform$OS.type != "unix")

  os_env_cache[["RANDOM"]] <- paste(sample(letters, 10), collapse = "")

  paws_reset_cache()

  expect_null(os_env_cache[["RANDOM"]])
})
