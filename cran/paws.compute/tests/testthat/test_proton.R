svc <- paws::proton()

test_that("list_components", {
  expect_error(svc$list_components(), NA)
})

test_that("list_deployments", {
  expect_error(svc$list_deployments(), NA)
})

test_that("list_environment_templates", {
  expect_error(svc$list_environment_templates(), NA)
})

test_that("list_environments", {
  expect_error(svc$list_environments(), NA)
})

test_that("list_repositories", {
  expect_error(svc$list_repositories(), NA)
})

test_that("list_service_instances", {
  expect_error(svc$list_service_instances(), NA)
})

test_that("list_service_templates", {
  expect_error(svc$list_service_templates(), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(), NA)
})
