svc <- paws::redshiftdataapiservice()

test_that("list_statements", {
  expect_error(svc$list_statements(), NA)
})

test_that("list_statements", {
  expect_error(svc$list_statements(MaxResults = 20), NA)
})
