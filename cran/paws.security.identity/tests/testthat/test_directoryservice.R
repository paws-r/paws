svc <- paws.security.identity::directoryservice()

test_that("describe_directories", {
  skip_on_cran()
  expect_error(svc$describe_directories(), NA)
})

test_that("describe_event_topics", {
  skip_on_cran()
  expect_error(svc$describe_event_topics(), NA)
})

test_that("describe_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_snapshots(), NA)
})

test_that("describe_trusts", {
  skip_on_cran()
  expect_error(svc$describe_trusts(), NA)
})

test_that("list_ad_assessments", {
  skip_on_cran()
  expect_error(svc$list_ad_assessments(), NA)
})

test_that("list_log_subscriptions", {
  skip_on_cran()
  expect_error(svc$list_log_subscriptions(), NA)
})
