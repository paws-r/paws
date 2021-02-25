svc <- paws::accessanalyzer()

test_that("list_analyzers", {
  expect_error(svc$list_analyzers(), NA)
})
