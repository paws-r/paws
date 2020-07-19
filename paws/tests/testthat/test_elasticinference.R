context("elasticinference")

svc <- paws::elasticinference()

test_that("describe_accelerator_types", {
  expect_error(svc$describe_accelerator_types(), NA)
})

test_that("describe_accelerators", {
  expect_error(svc$describe_accelerators(), NA)
})
