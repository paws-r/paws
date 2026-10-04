svc <- paws.application.integration::eventbridge()

test_that("describe_event_bus", {
  skip_on_cran()
  expect_error(svc$describe_event_bus(), NA)
})

test_that("list_api_destinations", {
  skip_on_cran()
  expect_error(svc$list_api_destinations(), NA)
})

test_that("list_archives", {
  skip_on_cran()
  expect_error(svc$list_archives(), NA)
})

test_that("list_connections", {
  skip_on_cran()
  expect_error(svc$list_connections(), NA)
})

test_that("list_endpoints", {
  skip_on_cran()
  expect_error(svc$list_endpoints(), NA)
})

test_that("list_endpoints", {
  skip_on_cran()
  expect_error(svc$list_endpoints(MaxResults = 20), NA)
})

test_that("list_event_buses", {
  skip_on_cran()
  expect_error(svc$list_event_buses(), NA)
})

test_that("list_event_sources", {
  skip_on_cran()
  expect_error(svc$list_event_sources(), NA)
})

test_that("list_replays", {
  skip_on_cran()
  expect_error(svc$list_replays(), NA)
})

test_that("list_rules", {
  skip_on_cran()
  expect_error(svc$list_rules(), NA)
})
