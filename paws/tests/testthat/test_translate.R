context("translate")

svc <- paws::translate()

test_that("list_parallel_data", {
  expect_error(svc$list_parallel_data(), NA)
})

test_that("list_parallel_data", {
  expect_error(svc$list_parallel_data(MaxResults = 20), NA)
})

test_that("list_terminologies", {
  expect_error(svc$list_terminologies(), NA)
})

test_that("list_terminologies", {
  expect_error(svc$list_terminologies(MaxResults = 20), NA)
})

test_that("list_text_translation_jobs", {
  expect_error(svc$list_text_translation_jobs(), NA)
})

test_that("list_text_translation_jobs", {
  expect_error(svc$list_text_translation_jobs(MaxResults = 20), NA)
})
