svc <- paws::appflow()

test_that("describe_connector_profiles", {
  expect_error(svc$describe_connector_profiles(), NA)
})

test_that("describe_connectors", {
  expect_error(svc$describe_connectors(), NA)
})

test_that("list_connector_entities", {
  expect_error(svc$list_connector_entities(), NA)
})

test_that("list_flows", {
  expect_error(svc$list_flows(), NA)
})
