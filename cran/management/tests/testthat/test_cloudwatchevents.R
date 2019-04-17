context("cloudwatchevents")

svc <- paws::cloudwatchevents()

test_that("describe_event_bus", {
  expect_error(svc$describe_event_bus(), NA)
})

test_that("list_rules", {
  expect_error(svc$list_rules(), NA)
})
