svc <- paws::auditmanager()

test_that("list_assessment_reports", {
  expect_error(svc$list_assessment_reports(), NA)
})

test_that("list_assessments", {
  expect_error(svc$list_assessments(), NA)
})

test_that("list_control_domain_insights", {
  expect_error(svc$list_control_domain_insights(), NA)
})

test_that("list_notifications", {
  expect_error(svc$list_notifications(), NA)
})
