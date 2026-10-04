svc <- paws.management::applicationinsights()

test_that("list_applications", {
  skip_on_cran()
  expect_error(svc$list_applications(), NA)
})

test_that("list_applications", {
  skip_on_cran()
  expect_error(svc$list_applications(MaxResults = 20), NA)
})

test_that("list_configuration_history", {
  skip_on_cran()
  expect_error(svc$list_configuration_history(), NA)
})

test_that("list_configuration_history", {
  skip_on_cran()
  expect_error(svc$list_configuration_history(MaxResults = 20), NA)
})

test_that("list_problems", {
  skip_on_cran()
  expect_error(svc$list_problems(), NA)
})

test_that("list_problems", {
  skip_on_cran()
  expect_error(svc$list_problems(MaxResults = 20), NA)
})
