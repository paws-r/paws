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

# skip test if not on unix OS
test_that("check if environmental variables are parsed correctly", {
  skip_if(.Platform$OS.type != "unix")
  expect <- sprintf(
    "var1=%s var2=%s var2=%s",
    paste(sample(letters, 10), collapse = ""),
    paste(sample(letters, 10), collapse = ""),
    paste(sample(letters, 10), collapse = "")
  )
  fake_env <- c(
    "AWS_ENV_VAR1=foo",
    sprintf("AWS_ENV_VAR2=%s", expect),
    "AWS_ENV_VAR3=bar",
    "OTHER",
    "_"
  )

  mock_env <- mock2(fake_env)
  mockery::stub(set_os_env_cache, "system", mock_env)

  set_os_env_cache()
  expect_equal(os_env_cache[["AWS_ENV_VAR1"]], "foo")
  expect_equal(os_env_cache[["AWS_ENV_VAR2"]], expect)
  expect_equal(os_env_cache[["AWS_ENV_VAR3"]], "bar")
  expect_null(os_env_cache[["OTHER"]])
})

test_that("check if environmental variables remove whitespace", {
  skip_if(.Platform$OS.type != "unix")
  expect <- sprintf(
    "var1=%s var2=%s var2=%s",
    paste(sample(letters, 10), collapse = ""),
    paste(sample(letters, 10), collapse = ""),
    paste(sample(letters, 10), collapse = "")
  )
  fake_env <- c(
    "AWS_ENV_VAR1 = foo ",
    sprintf("AWS_ENV_VAR2=%s", expect),
    "AWS_ENV_VAR3   =    bar    ",
    "OTHER",
    "_"
  )

  mock_env <- mock2(fake_env)
  mockery::stub(set_os_env_cache, "system", mock_env)

  set_os_env_cache()
  expect_equal(os_env_cache[["AWS_ENV_VAR1"]], "foo")
  expect_equal(os_env_cache[["AWS_ENV_VAR2"]], expect)
  expect_equal(os_env_cache[["AWS_ENV_VAR3"]], "bar")
  expect_null(os_env_cache[["OTHER"]])
})

test_that("check if environmental variables with nothing assigned", {
  skip_if(.Platform$OS.type != "unix")
  fake_env <- c(
    "AWS_ENV_VAR1",
    "AWS_ENV_VAR2=",
    "OTHER"
  )

  mock_env <- mock2(fake_env)
  mockery::stub(set_os_env_cache, "system", mock_env)

  set_os_env_cache()
  expect_equal(os_env_cache[["AWS_ENV_VAR1"]], "")
  expect_equal(os_env_cache[["AWS_ENV_VAR2"]], "")
  expect_null(os_env_cache[["OTHER"]])
})
