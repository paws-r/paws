svc <- paws::ssmincidents()

test_that("list_incident_records", {
  expect_error(svc$list_incident_records(), NA)
})

test_that("list_replication_sets", {
  expect_error(svc$list_replication_sets(), NA)
})

test_that("list_response_plans", {
  expect_error(svc$list_response_plans(), NA)
})
