svc <- paws::backup()

test_that("describe_global_settings", {
  expect_error(svc$describe_global_settings(), NA)
})

test_that("describe_region_settings", {
  expect_error(svc$describe_region_settings(), NA)
})

test_that("list_backup_jobs", {
  expect_error(svc$list_backup_jobs(), NA)
})

test_that("list_backup_jobs", {
  expect_error(svc$list_backup_jobs(MaxResults = 20), NA)
})

test_that("list_backup_plan_templates", {
  expect_error(svc$list_backup_plan_templates(), NA)
})

test_that("list_backup_plan_templates", {
  expect_error(svc$list_backup_plan_templates(MaxResults = 20), NA)
})

test_that("list_backup_plans", {
  expect_error(svc$list_backup_plans(), NA)
})

test_that("list_backup_plans", {
  expect_error(svc$list_backup_plans(MaxResults = 20), NA)
})

test_that("list_backup_vaults", {
  expect_error(svc$list_backup_vaults(), NA)
})

test_that("list_backup_vaults", {
  expect_error(svc$list_backup_vaults(MaxResults = 20), NA)
})

test_that("list_copy_jobs", {
  expect_error(svc$list_copy_jobs(), NA)
})

test_that("list_copy_jobs", {
  expect_error(svc$list_copy_jobs(MaxResults = 20), NA)
})

test_that("list_frameworks", {
  expect_error(svc$list_frameworks(), NA)
})

test_that("list_frameworks", {
  expect_error(svc$list_frameworks(MaxResults = 20), NA)
})

test_that("list_legal_holds", {
  expect_error(svc$list_legal_holds(), NA)
})

test_that("list_legal_holds", {
  expect_error(svc$list_legal_holds(MaxResults = 20), NA)
})

test_that("list_protected_resources", {
  expect_error(svc$list_protected_resources(), NA)
})

test_that("list_protected_resources", {
  expect_error(svc$list_protected_resources(MaxResults = 20), NA)
})

test_that("list_report_jobs", {
  expect_error(svc$list_report_jobs(), NA)
})

test_that("list_report_jobs", {
  expect_error(svc$list_report_jobs(MaxResults = 20), NA)
})

test_that("list_report_plans", {
  expect_error(svc$list_report_plans(), NA)
})

test_that("list_report_plans", {
  expect_error(svc$list_report_plans(MaxResults = 20), NA)
})

test_that("list_restore_jobs", {
  expect_error(svc$list_restore_jobs(), NA)
})

test_that("list_restore_jobs", {
  expect_error(svc$list_restore_jobs(MaxResults = 20), NA)
})
