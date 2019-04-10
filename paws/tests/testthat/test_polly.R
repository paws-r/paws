context("polly")

svc <- paws::polly()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_voices", {
  expect_error(svc$describe_voices(), NA)
})

test_that("list_lexicons", {
  expect_error(svc$list_lexicons(), NA)
})

test_that("list_speech_synthesis_tasks", {
  expect_error(svc$list_speech_synthesis_tasks(), NA)
})

test_that("list_speech_synthesis_tasks", {
  expect_error(svc$list_speech_synthesis_tasks(MaxResults = 20), NA)
})

}
