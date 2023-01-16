svc <- paws::finspacedata()

test_that("list_datasets", {
  expect_error(svc$list_datasets(), NA)
})
