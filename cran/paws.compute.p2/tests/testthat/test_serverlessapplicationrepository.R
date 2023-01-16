svc <- paws::serverlessapplicationrepository()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})
