svc <- paws::controltower()

test_that("list_baselines", {
  expect_error(svc$list_baselines(), NA)
})

test_that("list_enabled_baselines", {
  expect_error(svc$list_enabled_baselines(), NA)
})

test_that("list_landing_zones", {
  expect_error(svc$list_landing_zones(), NA)
})
