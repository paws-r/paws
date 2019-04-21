context("dynamodbstreams")

svc <- paws::dynamodbstreams()

test_that("list_streams", {
  expect_error(svc$list_streams(), NA)
})
