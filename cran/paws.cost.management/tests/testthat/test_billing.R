svc <- paws::billing()

test_that("list_billing_views", {
  expect_error(svc$list_billing_views(), NA)
})
