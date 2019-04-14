context("alexaforbusiness")

svc <- paws::alexaforbusiness()

test_that("list_business_report_schedules", {
  expect_error(svc$list_business_report_schedules(), NA)
})

test_that("list_business_report_schedules", {
  expect_error(svc$list_business_report_schedules(MaxResults = 20), NA)
})

test_that("list_conference_providers", {
  expect_error(svc$list_conference_providers(), NA)
})

test_that("list_conference_providers", {
  expect_error(svc$list_conference_providers(MaxResults = 20), NA)
})

test_that("list_skills_store_categories", {
  expect_error(svc$list_skills_store_categories(), NA)
})

test_that("list_skills_store_categories", {
  expect_error(svc$list_skills_store_categories(MaxResults = 20), NA)
})
