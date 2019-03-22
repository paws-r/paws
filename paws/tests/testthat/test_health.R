context("health")

svc <- paws::health()

test_that("describe_entity_aggregates", {
  expect_error(svc$describe_entity_aggregates(), NA)
})

test_that("describe_event_types", {
  expect_error(svc$describe_event_types(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})
