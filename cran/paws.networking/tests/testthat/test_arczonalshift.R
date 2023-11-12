svc <- paws::arczonalshift()

test_that("list_managed_resources", {
  expect_error(svc$list_managed_resources(), NA)
})

test_that("list_zonal_shifts", {
  expect_error(svc$list_zonal_shifts(), NA)
})
