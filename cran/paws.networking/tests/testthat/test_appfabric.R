svc <- paws::appfabric()

test_that("list_app_bundles", {
  expect_error(svc$list_app_bundles(), NA)
})
