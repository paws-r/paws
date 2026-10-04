svc <- paws.cost.management::billing()

test_that("list_billing_view_segments", {
  skip_on_cran()
  expect_error(svc$list_billing_view_segments(), NA)
})

test_that("list_billing_views", {
  skip_on_cran()
  expect_error(svc$list_billing_views(), NA)
})

test_that("list_business_support_subscription_history", {
  skip_on_cran()
  expect_error(svc$list_business_support_subscription_history(), NA)
})
