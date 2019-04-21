context("elastictranscoder")

svc <- paws::elastictranscoder()

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})

test_that("list_presets", {
  expect_error(svc$list_presets(), NA)
})
