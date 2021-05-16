svc <- paws::mediatailor()

test_that("list_channels", {
  expect_error(svc$list_channels(), NA)
})

test_that("list_channels", {
  expect_error(svc$list_channels(MaxResults = 20), NA)
})

test_that("list_playback_configurations", {
  expect_error(svc$list_playback_configurations(), NA)
})

test_that("list_playback_configurations", {
  expect_error(svc$list_playback_configurations(MaxResults = 20), NA)
})

test_that("list_source_locations", {
  expect_error(svc$list_source_locations(), NA)
})

test_that("list_source_locations", {
  expect_error(svc$list_source_locations(MaxResults = 20), NA)
})
