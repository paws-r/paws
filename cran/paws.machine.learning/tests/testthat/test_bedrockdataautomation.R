svc <- paws::bedrockdataautomation()

test_that("list_blueprints", {
  expect_error(svc$list_blueprints(), NA)
})

test_that("list_data_automation_libraries", {
  expect_error(svc$list_data_automation_libraries(), NA)
})

test_that("list_data_automation_projects", {
  expect_error(svc$list_data_automation_projects(), NA)
})
