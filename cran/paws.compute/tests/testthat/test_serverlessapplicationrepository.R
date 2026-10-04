svc <- paws::serverlessapplicationrepository()

test_that("list_applications", {
  skip_on_cran()
  expect_error(svc$list_applications(), NA)
})
