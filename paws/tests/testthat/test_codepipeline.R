context("codepipeline")

svc <- paws::codepipeline()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_action_types", {
  expect_error(svc$list_action_types(), NA)
})

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})

test_that("list_webhooks", {
  expect_error(svc$list_webhooks(), NA)
})

test_that("list_webhooks", {
  expect_error(svc$list_webhooks(MaxResults = 20), NA)
})

}
