context("firehose")

svc <- paws::firehose()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_delivery_streams", {
  expect_error(svc$list_delivery_streams(), NA)
})

}
