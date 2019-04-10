context("shield")

svc <- paws::shield()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_attacks", {
  expect_error(svc$list_attacks(), NA)
})

test_that("list_attacks", {
  expect_error(svc$list_attacks(MaxResults = 20), NA)
})

}
