context("dax")

svc <- paws::dax()

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(), NA)
})

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(MaxResults = 20), NA)
})

test_that("describe_default_parameters", {
  expect_error(svc$describe_default_parameters(), NA)
})

test_that("describe_default_parameters", {
  expect_error(svc$describe_default_parameters(MaxResults = 20), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(MaxResults = 20), NA)
})

test_that("describe_parameter_groups", {
  expect_error(svc$describe_parameter_groups(), NA)
})

test_that("describe_parameter_groups", {
  expect_error(svc$describe_parameter_groups(MaxResults = 20), NA)
})

test_that("describe_subnet_groups", {
  expect_error(svc$describe_subnet_groups(), NA)
})

test_that("describe_subnet_groups", {
  expect_error(svc$describe_subnet_groups(MaxResults = 20), NA)
})
