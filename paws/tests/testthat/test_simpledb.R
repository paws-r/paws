context("simpledb")

svc <- paws::simpledb()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

}
