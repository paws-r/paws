context("cognitosync")

svc <- paws::cognitosync()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_identity_pool_usage", {
  expect_error(svc$list_identity_pool_usage(), NA)
})

test_that("list_identity_pool_usage", {
  expect_error(svc$list_identity_pool_usage(MaxResults = 20), NA)
})

}
