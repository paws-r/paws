context("migrationhubconfig")

svc <- paws::migrationhubconfig()

test_that("describe_home_region_controls", {
  expect_error(svc$describe_home_region_controls(), NA)
})

test_that("describe_home_region_controls", {
  expect_error(svc$describe_home_region_controls(MaxResults = 20), NA)
})
