context("emr")

svc <- paws::emr()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_security_configurations", {
  expect_error(svc$list_security_configurations(), NA)
})

}
