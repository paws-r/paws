context("ecr")

svc <- paws::ecr()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_repositories", {
  expect_error(svc$describe_repositories(), NA)
})

}
