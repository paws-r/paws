test_that("list_playback_configurations", {
    expect_error(list_playback_configurations(), NA)
})

test_that("list_playback_configurations", {
    expect_error(list_playback_configurations(MaxResults = 20), NA)
})
