svc <- paws::mwaa()

test_that("list_environments", {
  expect_error(svc$list_environments(), NA)
})

test_that("list_environments", {
  expect_error(svc$list_environments(MaxResults = 20), NA)
})
