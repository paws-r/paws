context("transfer")

svc <- paws::transfer()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_servers", {
  expect_error(svc$list_servers(), NA)
})

test_that("list_servers", {
  expect_error(svc$list_servers(MaxResults = 20), NA)
})

}
