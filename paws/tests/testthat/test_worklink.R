context("worklink")

svc <- paws::worklink()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_fleets", {
  expect_error(svc$list_fleets(), NA)
})

test_that("list_fleets", {
  expect_error(svc$list_fleets(MaxResults = 20), NA)
})

}
