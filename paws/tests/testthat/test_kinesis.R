context("kinesis")

svc <- paws::kinesis()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_limits", {
  expect_error(svc$describe_limits(), NA)
})

test_that("list_streams", {
  expect_error(svc$list_streams(), NA)
})

}
