context("ecr")

svc <- paws::ecr()

test_that("describe_repositories", {
  expect_error(svc$describe_repositories(), NA)
})
