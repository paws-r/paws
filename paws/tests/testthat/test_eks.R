context("eks")

svc <- paws::eks()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

}
