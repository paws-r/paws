svc <- paws.application.integration::sfn()

test_that("list_activities", {
  skip_on_cran()
  expect_error(svc$list_activities(), NA)
})

test_that("list_executions", {
  skip_on_cran()
  expect_error(svc$list_executions(), NA)
})

test_that("list_state_machines", {
  skip_on_cran()
  expect_error(svc$list_state_machines(), NA)
})
