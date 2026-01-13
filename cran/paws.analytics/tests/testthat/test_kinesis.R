svc <- paws::kinesis()

test_that("describe_account_settings", {
  expect_error(svc$describe_account_settings(), NA)
})

test_that("describe_limits", {
  expect_error(svc$describe_limits(), NA)
})

test_that("describe_stream", {
  expect_error(svc$describe_stream(), NA)
})

test_that("describe_stream_summary", {
  expect_error(svc$describe_stream_summary(), NA)
})

test_that("list_streams", {
  expect_error(svc$list_streams(), NA)
})

test_that("list_tags_for_stream", {
  expect_error(svc$list_tags_for_stream(), NA)
})
