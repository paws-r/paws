context("comprehendmedical")

svc <- paws::comprehendmedical()

test_that("list_entities_detection_v2_jobs", {
  expect_error(svc$list_entities_detection_v2_jobs(), NA)
})

test_that("list_entities_detection_v2_jobs", {
  expect_error(svc$list_entities_detection_v2_jobs(MaxResults = 20), NA)
})

test_that("list_icd10cm_inference_jobs", {
  expect_error(svc$list_icd10cm_inference_jobs(), NA)
})

test_that("list_icd10cm_inference_jobs", {
  expect_error(svc$list_icd10cm_inference_jobs(MaxResults = 20), NA)
})

test_that("list_phi_detection_jobs", {
  expect_error(svc$list_phi_detection_jobs(), NA)
})

test_that("list_phi_detection_jobs", {
  expect_error(svc$list_phi_detection_jobs(MaxResults = 20), NA)
})

test_that("list_rx_norm_inference_jobs", {
  expect_error(svc$list_rx_norm_inference_jobs(), NA)
})

test_that("list_rx_norm_inference_jobs", {
  expect_error(svc$list_rx_norm_inference_jobs(MaxResults = 20), NA)
})
