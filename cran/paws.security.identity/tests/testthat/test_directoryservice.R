svc <- paws::directoryservice()

test_that("describe_directories", {
  expect_error(svc$describe_directories(), NA)
})

test_that("describe_event_topics", {
  expect_error(svc$describe_event_topics(), NA)
})

test_that("describe_snapshots", {
  expect_error(svc$describe_snapshots(), NA)
})

test_that("describe_trusts", {
  expect_error(svc$describe_trusts(), NA)
})

test_that("list_ad_assessments", {
  expect_error(svc$list_ad_assessments(), NA)
})

test_that("list_log_subscriptions", {
  expect_error(svc$list_log_subscriptions(), NA)
})
