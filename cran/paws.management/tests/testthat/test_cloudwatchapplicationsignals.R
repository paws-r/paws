svc <- paws.management::cloudwatchapplicationsignals()

test_that("list_grouping_attribute_definitions", {
  skip_on_cran()
  expect_error(svc$list_grouping_attribute_definitions(), NA)
})

test_that("list_service_level_objectives", {
  skip_on_cran()
  expect_error(svc$list_service_level_objectives(), NA)
})

test_that("list_service_level_objectives", {
  skip_on_cran()
  expect_error(svc$list_service_level_objectives(MaxResults = 20), NA)
})
