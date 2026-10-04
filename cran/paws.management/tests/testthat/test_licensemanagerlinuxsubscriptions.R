svc <- paws::licensemanagerlinuxsubscriptions()

test_that("list_linux_subscription_instances", {
  skip_on_cran()
  expect_error(svc$list_linux_subscription_instances(), NA)
})

test_that("list_linux_subscription_instances", {
  skip_on_cran()
  expect_error(svc$list_linux_subscription_instances(MaxResults = 20), NA)
})

test_that("list_linux_subscriptions", {
  skip_on_cran()
  expect_error(svc$list_linux_subscriptions(), NA)
})

test_that("list_linux_subscriptions", {
  skip_on_cran()
  expect_error(svc$list_linux_subscriptions(MaxResults = 20), NA)
})

test_that("list_registered_subscription_providers", {
  skip_on_cran()
  expect_error(svc$list_registered_subscription_providers(), NA)
})

test_that("list_registered_subscription_providers", {
  skip_on_cran()
  expect_error(svc$list_registered_subscription_providers(MaxResults = 20), NA)
})
