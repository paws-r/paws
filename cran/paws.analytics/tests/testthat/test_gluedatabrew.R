svc <- paws::gluedatabrew()

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(MaxResults = 20), NA)
})

test_that("list_jobs", {
  skip_on_cran()
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  skip_on_cran()
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_projects", {
  skip_on_cran()
  expect_error(svc$list_projects(), NA)
})

test_that("list_projects", {
  skip_on_cran()
  expect_error(svc$list_projects(MaxResults = 20), NA)
})

test_that("list_recipes", {
  skip_on_cran()
  expect_error(svc$list_recipes(), NA)
})

test_that("list_recipes", {
  skip_on_cran()
  expect_error(svc$list_recipes(MaxResults = 20), NA)
})

test_that("list_rulesets", {
  skip_on_cran()
  expect_error(svc$list_rulesets(), NA)
})

test_that("list_rulesets", {
  skip_on_cran()
  expect_error(svc$list_rulesets(MaxResults = 20), NA)
})

test_that("list_schedules", {
  skip_on_cran()
  expect_error(svc$list_schedules(), NA)
})

test_that("list_schedules", {
  skip_on_cran()
  expect_error(svc$list_schedules(MaxResults = 20), NA)
})
