svc <- paws.machine.learning::bedrockdataautomation()

test_that("list_blueprints", {
  skip_on_cran()
  expect_error(svc$list_blueprints(), NA)
})

test_that("list_data_automation_libraries", {
  skip_on_cran()
  expect_error(svc$list_data_automation_libraries(), NA)
})

test_that("list_data_automation_projects", {
  skip_on_cran()
  expect_error(svc$list_data_automation_projects(), NA)
})
