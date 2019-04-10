context("dynamodbstreams")

svc <- paws::dynamodbstreams()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_streams", {
  expect_error(svc$list_streams(), NA)
})

}
