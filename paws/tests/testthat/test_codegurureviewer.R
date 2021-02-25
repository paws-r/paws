svc <- paws::codegurureviewer()

test_that("list_repository_associations", {
  expect_error(svc$list_repository_associations(), NA)
})

test_that("list_repository_associations", {
  expect_error(svc$list_repository_associations(MaxResults = 20), NA)
})
