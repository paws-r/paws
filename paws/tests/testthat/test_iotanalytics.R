svc <- paws::iotanalytics()

test_that("list_channels", {
  expect_error(svc$list_channels(), NA)
})

test_that("list_datasets", {
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datastores", {
  expect_error(svc$list_datastores(), NA)
})

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})
