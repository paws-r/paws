svc <- paws::iotdeviceadvisor()

test_that("list_suite_definitions", {
  expect_error(svc$list_suite_definitions(), NA)
})

test_that("list_suite_runs", {
  expect_error(svc$list_suite_runs(), NA)
})

test_that("list_test_cases", {
  expect_error(svc$list_test_cases(), NA)
})
