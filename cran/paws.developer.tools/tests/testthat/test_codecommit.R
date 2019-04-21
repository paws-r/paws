context("codecommit")

svc <- paws::codecommit()

test_that("list_repositories", {
  expect_error(svc$list_repositories(), NA)
})
