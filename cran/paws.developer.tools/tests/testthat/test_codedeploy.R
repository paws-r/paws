svc <- paws::codedeploy()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

test_that("list_deployment_configs", {
  expect_error(svc$list_deployment_configs(), NA)
})

test_that("list_deployments", {
  expect_error(svc$list_deployments(), NA)
})

test_that("list_git_hub_account_token_names", {
  expect_error(svc$list_git_hub_account_token_names(), NA)
})

test_that("list_on_premises_instances", {
  expect_error(svc$list_on_premises_instances(), NA)
})
