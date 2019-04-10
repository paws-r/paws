context("medialive")

svc <- paws::medialive()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_channels", {
  expect_error(svc$list_channels(), NA)
})

test_that("list_channels", {
  expect_error(svc$list_channels(MaxResults = 20), NA)
})

test_that("list_input_security_groups", {
  expect_error(svc$list_input_security_groups(), NA)
})

test_that("list_input_security_groups", {
  expect_error(svc$list_input_security_groups(MaxResults = 20), NA)
})

test_that("list_inputs", {
  expect_error(svc$list_inputs(), NA)
})

test_that("list_inputs", {
  expect_error(svc$list_inputs(MaxResults = 20), NA)
})

test_that("list_offerings", {
  expect_error(svc$list_offerings(), NA)
})

test_that("list_offerings", {
  expect_error(svc$list_offerings(MaxResults = 20), NA)
})

test_that("list_reservations", {
  expect_error(svc$list_reservations(), NA)
})

test_that("list_reservations", {
  expect_error(svc$list_reservations(MaxResults = 20), NA)
})

}
