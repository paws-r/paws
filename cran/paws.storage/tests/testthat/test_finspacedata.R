svc <- paws::finspacedata()

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(), NA)
})
