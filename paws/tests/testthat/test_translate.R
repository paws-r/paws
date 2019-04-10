context("translate")

svc <- paws::translate()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_terminologies", {
  expect_error(svc$list_terminologies(), NA)
})

test_that("list_terminologies", {
  expect_error(svc$list_terminologies(MaxResults = 20), NA)
})

}
