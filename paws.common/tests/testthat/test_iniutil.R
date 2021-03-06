test_that("Reads in default profile", {
  content <- read_ini("data_ini")
  profile <- "default"
  expect_equal(content[[profile]]$arg1, "value1")
  expect_equal(content[[profile]]$arg2, "value2")
})

test_that("Reads in alternative profile", {
  content <- read_ini("data_ini")
  profile <- "foo"
  expect_equal(content[[profile]]$arg1, "foo_value1")
  expect_equal(content[[profile]]$arg2, "foo_value2")
})

test_that("Reads in profile with space in name", {
  content <- read_ini("data_ini")
  profile <- "profile bar"
  expect_equal(content[[profile]]$arg1, "bar_value1")
  expect_equal(content[[profile]]$arg2, "bar_value2")
})
