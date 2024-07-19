svc <- paws::licensemanagerlinuxsubscriptions()

test_that("list_linux_subscription_instances", {
  expect_error(svc$list_linux_subscription_instances(), NA)
})

test_that("list_linux_subscription_instances", {
  expect_error(svc$list_linux_subscription_instances(MaxResults = 20), NA)
})

test_that("list_linux_subscriptions", {
  expect_error(svc$list_linux_subscriptions(), NA)
})

test_that("list_linux_subscriptions", {
  expect_error(svc$list_linux_subscriptions(MaxResults = 20), NA)
})

test_that("list_registered_subscription_providers", {
  expect_error(svc$list_registered_subscription_providers(), NA)
})

test_that("list_registered_subscription_providers", {
  expect_error(svc$list_registered_subscription_providers(MaxResults = 20), NA)
})
