svc <- paws::elasticbeanstalk()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_application_versions", {
  expect_error(svc$describe_application_versions(), NA)
})

test_that("describe_applications", {
  expect_error(svc$describe_applications(), NA)
})

test_that("describe_environments", {
  expect_error(svc$describe_environments(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("list_available_solution_stacks", {
  expect_error(svc$list_available_solution_stacks(), NA)
})

test_that("list_platform_branches", {
  expect_error(svc$list_platform_branches(), NA)
})

test_that("list_platform_versions", {
  expect_error(svc$list_platform_versions(), NA)
})
