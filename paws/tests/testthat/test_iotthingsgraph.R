context("iotthingsgraph")

svc <- paws::iotthingsgraph()

test_that("describe_namespace", {
  expect_error(svc$describe_namespace(), NA)
})
