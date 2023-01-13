svc <- paws::secretsmanager()

test_that("list_secrets", {
  expect_error(svc$list_secrets(), NA)
})

test_that("list_secrets", {
  expect_error(svc$list_secrets(MaxResults = 20), NA)
})
