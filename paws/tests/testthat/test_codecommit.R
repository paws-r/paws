context("codecommit")

svc <- paws::codecommit()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_repositories", {
  expect_error(svc$list_repositories(), NA)
})

}
