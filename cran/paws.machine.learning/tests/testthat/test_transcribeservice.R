svc <- paws::transcribeservice()

test_that("list_call_analytics_categories", {
  expect_error(svc$list_call_analytics_categories(), NA)
})

test_that("list_call_analytics_categories", {
  expect_error(svc$list_call_analytics_categories(MaxResults = 20), NA)
})

test_that("list_call_analytics_jobs", {
  expect_error(svc$list_call_analytics_jobs(), NA)
})

test_that("list_call_analytics_jobs", {
  expect_error(svc$list_call_analytics_jobs(MaxResults = 20), NA)
})

test_that("list_language_models", {
  expect_error(svc$list_language_models(), NA)
})

test_that("list_language_models", {
  expect_error(svc$list_language_models(MaxResults = 20), NA)
})

test_that("list_medical_transcription_jobs", {
  expect_error(svc$list_medical_transcription_jobs(), NA)
})

test_that("list_medical_transcription_jobs", {
  expect_error(svc$list_medical_transcription_jobs(MaxResults = 20), NA)
})

test_that("list_medical_vocabularies", {
  expect_error(svc$list_medical_vocabularies(), NA)
})

test_that("list_medical_vocabularies", {
  expect_error(svc$list_medical_vocabularies(MaxResults = 20), NA)
})

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
