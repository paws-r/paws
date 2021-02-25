svc <- paws::eventbridge()

test_that("describe_event_bus", {
  expect_error(svc$describe_event_bus(), NA)
})

test_that("list_archives", {
  expect_error(svc$list_archives(), NA)
})

test_that("list_event_buses", {
  expect_error(svc$list_event_buses(), NA)
})

test_that("list_event_sources", {
  expect_error(svc$list_event_sources(), NA)
})

test_that("list_replays", {
  expect_error(svc$list_replays(), NA)
})

test_that("list_rules", {
  expect_error(svc$list_rules(), NA)
})
