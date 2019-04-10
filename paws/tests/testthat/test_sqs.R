context("sqs")

svc <- paws::sqs()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_queues", {
  expect_error(svc$list_queues(), NA)
})

}
