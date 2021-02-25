svc <- paws::sqs()

test_that("list_queues", {
  expect_error(svc$list_queues(), NA)
})

test_that("list_queues", {
  expect_error(svc$list_queues(MaxResults = 20), NA)
})
