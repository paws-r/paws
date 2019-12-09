context("comprehendmedical")

svc <- paws::comprehendmedical()

test_that("list_entities_detection_v2_jobs", {
  expect_error(svc$list_entities_detection_v2_jobs(), NA)
})

test_that("list_entities_detection_v2_jobs", {
  expect_error(svc$list_entities_detection_v2_jobs(MaxResults = 20), NA)
})

test_that("list_phi_detection_jobs", {
  expect_error(svc$list_phi_detection_jobs(), NA)
})

test_that("list_phi_detection_jobs", {
  expect_error(svc$list_phi_detection_jobs(MaxResults = 20), NA)
})
