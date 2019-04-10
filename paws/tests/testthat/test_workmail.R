context("workmail")

svc <- paws::workmail()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_organizations", {
  expect_error(svc$list_organizations(), NA)
})

test_that("list_organizations", {
  expect_error(svc$list_organizations(MaxResults = 20), NA)
})

}
