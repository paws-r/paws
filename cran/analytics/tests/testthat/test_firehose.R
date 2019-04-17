context("firehose")

svc <- paws::firehose()

test_that("list_delivery_streams", {
  expect_error(svc$list_delivery_streams(), NA)
})
