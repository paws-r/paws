context("mediapackage")

svc <- paws::mediapackage()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_channels", {
  expect_error(svc$list_channels(), NA)
})

test_that("list_channels", {
  expect_error(svc$list_channels(MaxResults = 20), NA)
})

test_that("list_origin_endpoints", {
  expect_error(svc$list_origin_endpoints(), NA)
})

test_that("list_origin_endpoints", {
  expect_error(svc$list_origin_endpoints(MaxResults = 20), NA)
})

}
