svc <- paws::codeartifact()

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

test_that("list_repositories", {
  expect_error(svc$list_repositories(), NA)
})
