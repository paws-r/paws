context("kinesisanalytics")

svc <- paws::kinesisanalytics()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

}
