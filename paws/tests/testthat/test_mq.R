svc <- paws::mq()

test_that("describe_broker_engine_types", {
  expect_error(svc$describe_broker_engine_types(), NA)
})

test_that("describe_broker_engine_types", {
  expect_error(svc$describe_broker_engine_types(MaxResults = 20), NA)
})

test_that("describe_broker_instance_options", {
  expect_error(svc$describe_broker_instance_options(), NA)
})

test_that("describe_broker_instance_options", {
  expect_error(svc$describe_broker_instance_options(MaxResults = 20), NA)
})

test_that("list_brokers", {
  expect_error(svc$list_brokers(), NA)
})

test_that("list_brokers", {
  expect_error(svc$list_brokers(MaxResults = 20), NA)
})

test_that("list_configurations", {
  expect_error(svc$list_configurations(), NA)
})

test_that("list_configurations", {
  expect_error(svc$list_configurations(MaxResults = 20), NA)
})
