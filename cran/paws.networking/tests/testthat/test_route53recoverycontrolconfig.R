svc <- paws.networking::route53recoverycontrolconfig()

test_that("list_clusters", {
  skip_on_cran()
  expect_error(svc$list_clusters(), NA)
})

test_that("list_clusters", {
  skip_on_cran()
  expect_error(svc$list_clusters(MaxResults = 20), NA)
})

test_that("list_control_panels", {
  skip_on_cran()
  expect_error(svc$list_control_panels(), NA)
})

test_that("list_control_panels", {
  skip_on_cran()
  expect_error(svc$list_control_panels(MaxResults = 20), NA)
})
