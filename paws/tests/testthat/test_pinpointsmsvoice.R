context("pinpointsmsvoice")

svc <- paws::pinpointsmsvoice()

test_that("list_configuration_sets", {
  expect_error(svc$list_configuration_sets(), NA)
})
