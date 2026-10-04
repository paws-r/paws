svc <- paws.management::ssmincidents()

test_that("list_incident_records", {
  skip_on_cran()
  expect_error(svc$list_incident_records(), NA)
})

test_that("list_replication_sets", {
  skip_on_cran()
  expect_error(svc$list_replication_sets(), NA)
})

test_that("list_response_plans", {
  skip_on_cran()
  expect_error(svc$list_response_plans(), NA)
})
