context("rekognition")

svc <- paws::rekognition()

test_that("describe_projects", {
  expect_error(svc$describe_projects(), NA)
})

test_that("describe_projects", {
  expect_error(svc$describe_projects(MaxResults = 20), NA)
})

test_that("list_collections", {
  expect_error(svc$list_collections(), NA)
})

test_that("list_collections", {
  expect_error(svc$list_collections(MaxResults = 20), NA)
})

test_that("list_stream_processors", {
  expect_error(svc$list_stream_processors(), NA)
})

test_that("list_stream_processors", {
  expect_error(svc$list_stream_processors(MaxResults = 20), NA)
})
