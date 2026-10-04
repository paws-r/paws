svc <- paws.networking::arczonalshift()

test_that("list_autoshifts", {
  skip_on_cran()
  expect_error(svc$list_autoshifts(), NA)
})

test_that("list_managed_resources", {
  skip_on_cran()
  expect_error(svc$list_managed_resources(), NA)
})

test_that("list_zonal_shifts", {
  skip_on_cran()
  expect_error(svc$list_zonal_shifts(), NA)
})
