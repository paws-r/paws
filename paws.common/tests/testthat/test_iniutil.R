test_that("Reads in default profile", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  profile <- "default"
  expect_equal(content[[profile]][["arg1"]], "value1")
  expect_equal(content[[profile]][["arg2"]], "value2")
})

test_that("Reads in alternative profile", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  profile <- "foo"
  expect_equal(content[[profile]][["arg1"]], "foo_value1")
  expect_equal(content[[profile]][["arg2"]], "foo_value2")
})

test_that("Ignores lines starting with # and ;", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  expect_false(("ignore1" %in% names(content)))
  expect_false(("ignore2" %in% names(content)))
})

test_that("Reads in profile with space in name", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  profile <- "profile bar"
  expect_equal(content[[profile]][["arg1"]], "bar_value1")
  expect_equal(content[[profile]][["arg2"]], "bar_value2")
})

test_that("Reads in values with equal signs", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  profile <- "equalsign"
  expect_equal(content[[profile]][["arg1"]], "value1==")
  expect_equal(content[[profile]][["arg2"]], "value2")
})

test_that("Reads in values with spaces around the equal sign", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  profile <- "spaces"
  expect_equal(content[[profile]][["arg1"]], "value1")
  expect_equal(content[[profile]][["arg2"]], "value2")
})

test_that("Reads in values with nested content", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  profile <- "nested"
  expect_equal(content[[profile]][["nested1"]], list(arg1 = "value1", arg2 = "value2"))
  expect_equal(content[[profile]][["nested2"]], list(arg4 = "value4"))
  expect_equal(content[[profile]][["arg3"]], "value3")
})

test_that("Reads empty profiles", {
  # clear down cache
  paws_reset_cache()
  content <- read_ini("data_ini")
  for (profile in c("empty1", "empty2")) {
    expect_null(content[[profile]])
  }
})

test_that("Check cache", {
  # clear down cache
  paws_reset_cache()
  content1 <- read_ini("data_ini")
  content2 <- read_ini("data_ini")
  expect_equal(content1, content2)
})
