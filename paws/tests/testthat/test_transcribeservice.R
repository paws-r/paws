context("transcribeservice")

svc <- paws::transcribeservice()

test_that("list_transcription_jobs", {
  expect_error(svc$list_transcription_jobs(), NA)
})

test_that("list_transcription_jobs", {
  expect_error(svc$list_transcription_jobs(MaxResults = 20), NA)
})

test_that("list_vocabularies", {
  expect_error(svc$list_vocabularies(), NA)
})

test_that("list_vocabularies", {
  expect_error(svc$list_vocabularies(MaxResults = 20), NA)
})

test_that("list_vocabulary_filters", {
  expect_error(svc$list_vocabulary_filters(), NA)
})

test_that("list_vocabulary_filters", {
  expect_error(svc$list_vocabulary_filters(MaxResults = 20), NA)
})
