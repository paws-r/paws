svc <- paws.developer.tools::codegurureviewer()

test_that("list_repository_associations", {
  skip_on_cran()
  expect_error(svc$list_repository_associations(), NA)
})

test_that("list_repository_associations", {
  skip_on_cran()
  expect_error(svc$list_repository_associations(MaxResults = 20), NA)
})
