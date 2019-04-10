context("datapipeline")

svc <- paws::datapipeline()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})

}
