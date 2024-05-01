svc <- paws::ivs()

test_that("list_channels", {
  expect_error(svc$list_channels(), NA)
})

test_that("list_playback_key_pairs", {
  expect_error(svc$list_playback_key_pairs(), NA)
})

test_that("list_playback_restriction_policies", {
  expect_error(svc$list_playback_restriction_policies(), NA)
})

test_that("list_recording_configurations", {
  expect_error(svc$list_recording_configurations(), NA)
})

test_that("list_streams", {
  expect_error(svc$list_streams(), NA)
})
