context("timestreamquery")

svc <- paws::timestreamquery()

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(), NA)
})
