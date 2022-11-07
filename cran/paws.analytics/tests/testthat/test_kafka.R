svc <- paws::kafka()

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(MaxResults = 20), NA)
})

test_that("list_clusters_v2", {
  expect_error(svc$list_clusters_v2(), NA)
})

test_that("list_clusters_v2", {
  expect_error(svc$list_clusters_v2(MaxResults = 20), NA)
})

test_that("list_configurations", {
  expect_error(svc$list_configurations(), NA)
})

test_that("list_configurations", {
  expect_error(svc$list_configurations(MaxResults = 20), NA)
})

test_that("list_kafka_versions", {
  expect_error(svc$list_kafka_versions(), NA)
})

test_that("list_kafka_versions", {
  expect_error(svc$list_kafka_versions(MaxResults = 20), NA)
})
