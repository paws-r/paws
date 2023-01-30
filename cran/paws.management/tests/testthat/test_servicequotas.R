svc <- paws::servicequotas()

test_that("list_requested_service_quota_change_history", {
  expect_error(svc$list_requested_service_quota_change_history(), NA)
})

test_that("list_requested_service_quota_change_history", {
  expect_error(svc$list_requested_service_quota_change_history(MaxResults = 20), NA)
})

test_that("list_service_quota_increase_requests_in_template", {
  expect_error(svc$list_service_quota_increase_requests_in_template(), NA)
})

test_that("list_service_quota_increase_requests_in_template", {
  expect_error(svc$list_service_quota_increase_requests_in_template(MaxResults = 20), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(MaxResults = 20), NA)
})
