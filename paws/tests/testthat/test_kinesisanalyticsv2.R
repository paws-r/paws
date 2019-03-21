context("kinesisanalyticsv2")

svc <- paws::kinesisanalyticsv2()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})
