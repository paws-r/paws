svc <- paws::ecr()

test_that("describe_pull_through_cache_rules", {
  expect_error(svc$describe_pull_through_cache_rules(), NA)
})

test_that("describe_registry", {
  expect_error(svc$describe_registry(), NA)
})

test_that("describe_repositories", {
  expect_error(svc$describe_repositories(), NA)
})

test_that("describe_repository_creation_templates", {
  expect_error(svc$describe_repository_creation_templates(), NA)
})

test_that("list_pull_time_update_exclusions", {
  expect_error(svc$list_pull_time_update_exclusions(), NA)
})
