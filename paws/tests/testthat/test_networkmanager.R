context("networkmanager")

svc <- paws::networkmanager()

test_that("describe_global_networks", {
  expect_error(svc$describe_global_networks(), NA)
})

test_that("describe_global_networks", {
  expect_error(svc$describe_global_networks(MaxResults = 20), NA)
})
