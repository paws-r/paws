svc <- paws::kafkaconnect()

test_that("list_connectors", {
  expect_error(svc$list_connectors(), NA)
})

test_that("list_custom_plugins", {
  expect_error(svc$list_custom_plugins(), NA)
})

test_that("list_worker_configurations", {
  expect_error(svc$list_worker_configurations(), NA)
})
