context("sns")

svc <- paws::sns()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_phone_numbers_opted_out", {
  expect_error(svc$list_phone_numbers_opted_out(), NA)
})

test_that("list_platform_applications", {
  expect_error(svc$list_platform_applications(), NA)
})

test_that("list_subscriptions", {
  expect_error(svc$list_subscriptions(), NA)
})

test_that("list_topics", {
  expect_error(svc$list_topics(), NA)
})

}
