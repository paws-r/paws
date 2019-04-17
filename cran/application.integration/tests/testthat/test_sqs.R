context("sqs")

svc <- paws::sqs()

test_that("list_queues", {
  expect_error(svc$list_queues(), NA)
})
