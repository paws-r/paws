context("mediatailor")

svc <- paws::mediatailor()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_playback_configurations", {
  expect_error(svc$list_playback_configurations(), NA)
})

test_that("list_playback_configurations", {
  expect_error(svc$list_playback_configurations(MaxResults = 20), NA)
})

}
