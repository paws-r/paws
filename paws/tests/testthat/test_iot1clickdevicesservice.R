context("iot1clickdevicesservice")

svc <- paws::iot1clickdevicesservice()

test_that("list_devices", {
  expect_error(svc$list_devices(), NA)
})

test_that("list_devices", {
  expect_error(svc$list_devices(MaxResults = 20), NA)
})
