context("datapipeline")

svc <- paws::datapipeline()

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})
