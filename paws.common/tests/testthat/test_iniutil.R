test_that("Reads in default profile", {
  content <- read_ini("data_ini")
  profile <- "default"
  expect_equal(content[[profile]][["arg1"]], "value1")
  expect_equal(content[[profile]][["arg2"]], "value2")
})

test_that("Reads in alternative profile", {
  content <- read_ini("data_ini")
  profile <- "foo"
  expect_equal(content[[profile]][["arg1"]], "foo_value1")
  expect_equal(content[[profile]][["arg2"]], "foo_value2")
})

test_that("Ignores lines starting with # and ;", {
  content <- read_ini("data_ini")
  expect_true(!("ignore1" %in% names(content)))
  expect_true(!("ignore2" %in% names(content)))
})

test_that("Reads in profile with space in name", {
  content <- read_ini("data_ini")
  profile <- "profile bar"
  expect_equal(content[[profile]][["arg1"]], "bar_value1")
  expect_equal(content[[profile]][["arg2"]], "bar_value2")
})

test_that("Reads in values with equal signs", {
  content <- read_ini("data_ini")
  profile <- "equalsign"
  expect_equal(content[[profile]][["arg1"]], "value1==")
  expect_equal(content[[profile]][["arg2"]], "value2")
})

test_that("Reads in values with spaces around the equal sign", {
  content <- read_ini("data_ini")
  profile <- "spaces"
  expect_equal(content[[profile]][["arg1"]], "value1")
  expect_equal(content[[profile]][["arg2"]], "value2")
})
