svc <- paws::synthetics()

test_that("describe_canaries", {
  expect_error(svc$describe_canaries(), NA)
})

test_that("describe_canaries", {
  expect_error(svc$describe_canaries(MaxResults = 20), NA)
})

test_that("describe_canaries_last_run", {
  expect_error(svc$describe_canaries_last_run(), NA)
})

test_that("describe_canaries_last_run", {
  expect_error(svc$describe_canaries_last_run(MaxResults = 20), NA)
})

test_that("describe_runtime_versions", {
  expect_error(svc$describe_runtime_versions(), NA)
})

test_that("describe_runtime_versions", {
  expect_error(svc$describe_runtime_versions(MaxResults = 20), NA)
})
