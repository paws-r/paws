context("secretsmanager")

svc <- paws::secretsmanager()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_secrets", {
  expect_error(svc$list_secrets(), NA)
})

test_that("list_secrets", {
  expect_error(svc$list_secrets(MaxResults = 20), NA)
})

}
