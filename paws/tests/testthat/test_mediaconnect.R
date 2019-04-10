context("mediaconnect")

svc <- paws::mediaconnect()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_entitlements", {
  expect_error(svc$list_entitlements(), NA)
})

test_that("list_entitlements", {
  expect_error(svc$list_entitlements(MaxResults = 20), NA)
})

test_that("list_flows", {
  expect_error(svc$list_flows(), NA)
})

test_that("list_flows", {
  expect_error(svc$list_flows(MaxResults = 20), NA)
})

}
