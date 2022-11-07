svc <- paws::gluedatabrew()

test_that("list_datasets", {
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datasets", {
  expect_error(svc$list_datasets(MaxResults = 20), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(MaxResults = 20), NA)
})

test_that("list_recipes", {
  expect_error(svc$list_recipes(), NA)
})

test_that("list_recipes", {
  expect_error(svc$list_recipes(MaxResults = 20), NA)
})

test_that("list_rulesets", {
  expect_error(svc$list_rulesets(), NA)
})

test_that("list_rulesets", {
  expect_error(svc$list_rulesets(MaxResults = 20), NA)
})

test_that("list_schedules", {
  expect_error(svc$list_schedules(), NA)
})

test_that("list_schedules", {
  expect_error(svc$list_schedules(MaxResults = 20), NA)
})
