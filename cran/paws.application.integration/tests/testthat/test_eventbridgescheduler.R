svc <- paws::eventbridgescheduler()

test_that("list_schedule_groups", {
  skip_on_cran()
  expect_error(svc$list_schedule_groups(), NA)
})

test_that("list_schedule_groups", {
  skip_on_cran()
  expect_error(svc$list_schedule_groups(MaxResults = 20), NA)
})

test_that("list_schedules", {
  skip_on_cran()
  expect_error(svc$list_schedules(), NA)
})

test_that("list_schedules", {
  skip_on_cran()
  expect_error(svc$list_schedules(MaxResults = 20), NA)
})
