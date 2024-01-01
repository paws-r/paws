svc <- paws::controltower()

test_that("list_landing_zones", {
  expect_error(svc$list_landing_zones(), NA)
})
