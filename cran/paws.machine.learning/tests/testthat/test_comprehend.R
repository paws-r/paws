svc <- paws::comprehend()

test_that("list_datasets", {
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datasets", {
  expect_error(svc$list_datasets(MaxResults = 20), NA)
})

test_that("list_document_classification_jobs", {
  expect_error(svc$list_document_classification_jobs(), NA)
})

test_that("list_document_classification_jobs", {
  expect_error(svc$list_document_classification_jobs(MaxResults = 20), NA)
})

test_that("list_document_classifier_summaries", {
  expect_error(svc$list_document_classifier_summaries(), NA)
})

test_that("list_document_classifier_summaries", {
  expect_error(svc$list_document_classifier_summaries(MaxResults = 20), NA)
})

test_that("list_document_classifiers", {
  expect_error(svc$list_document_classifiers(), NA)
})

test_that("list_document_classifiers", {
  expect_error(svc$list_document_classifiers(MaxResults = 20), NA)
})

test_that("list_dominant_language_detection_jobs", {
  expect_error(svc$list_dominant_language_detection_jobs(), NA)
})

test_that("list_dominant_language_detection_jobs", {
  expect_error(svc$list_dominant_language_detection_jobs(MaxResults = 20), NA)
})

test_that("list_endpoints", {
  expect_error(svc$list_endpoints(), NA)
})

test_that("list_endpoints", {
  expect_error(svc$list_endpoints(MaxResults = 20), NA)
})

test_that("list_entities_detection_jobs", {
  expect_error(svc$list_entities_detection_jobs(), NA)
})

test_that("list_entities_detection_jobs", {
  expect_error(svc$list_entities_detection_jobs(MaxResults = 20), NA)
})

test_that("list_entity_recognizer_summaries", {
  expect_error(svc$list_entity_recognizer_summaries(), NA)
})

test_that("list_entity_recognizer_summaries", {
  expect_error(svc$list_entity_recognizer_summaries(MaxResults = 20), NA)
})

test_that("list_entity_recognizers", {
  expect_error(svc$list_entity_recognizers(), NA)
})

test_that("list_entity_recognizers", {
  expect_error(svc$list_entity_recognizers(MaxResults = 20), NA)
})

test_that("list_events_detection_jobs", {
  expect_error(svc$list_events_detection_jobs(), NA)
})

test_that("list_events_detection_jobs", {
  expect_error(svc$list_events_detection_jobs(MaxResults = 20), NA)
})

test_that("list_flywheels", {
  expect_error(svc$list_flywheels(), NA)
})

test_that("list_flywheels", {
  expect_error(svc$list_flywheels(MaxResults = 20), NA)
})

test_that("list_key_phrases_detection_jobs", {
  expect_error(svc$list_key_phrases_detection_jobs(), NA)
})

test_that("list_key_phrases_detection_jobs", {
  expect_error(svc$list_key_phrases_detection_jobs(MaxResults = 20), NA)
})

test_that("list_pii_entities_detection_jobs", {
  expect_error(svc$list_pii_entities_detection_jobs(), NA)
})

test_that("list_pii_entities_detection_jobs", {
  expect_error(svc$list_pii_entities_detection_jobs(MaxResults = 20), NA)
})

test_that("list_sentiment_detection_jobs", {
  expect_error(svc$list_sentiment_detection_jobs(), NA)
})

test_that("list_sentiment_detection_jobs", {
  expect_error(svc$list_sentiment_detection_jobs(MaxResults = 20), NA)
})

test_that("list_targeted_sentiment_detection_jobs", {
  expect_error(svc$list_targeted_sentiment_detection_jobs(), NA)
})

test_that("list_targeted_sentiment_detection_jobs", {
  expect_error(svc$list_targeted_sentiment_detection_jobs(MaxResults = 20), NA)
})

test_that("list_topics_detection_jobs", {
  expect_error(svc$list_topics_detection_jobs(), NA)
})

test_that("list_topics_detection_jobs", {
  expect_error(svc$list_topics_detection_jobs(MaxResults = 20), NA)
})
