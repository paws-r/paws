context("snowball")

svc <- paws::snowball()

test_that("describe_addresses", {
  expect_error(svc$describe_addresses(), NA)
})

test_that("describe_addresses", {
  expect_error(svc$describe_addresses(MaxResults = 20), NA)
})

test_that("describe_return_shipping_label", {
  expect_error(svc$describe_return_shipping_label(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(MaxResults = 20), NA)
})

test_that("list_compatible_images", {
  expect_error(svc$list_compatible_images(), NA)
})

test_that("list_compatible_images", {
  expect_error(svc$list_compatible_images(MaxResults = 20), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})
