svc <- paws::resiliencehub()

test_that("list_app_assessments", {
  expect_error(svc$list_app_assessments(), NA)
})

test_that("list_apps", {
  expect_error(svc$list_apps(), NA)
})

test_that("list_recommendation_templates", {
  expect_error(svc$list_recommendation_templates(), NA)
})

test_that("list_resiliency_policies", {
  expect_error(svc$list_resiliency_policies(), NA)
})

test_that("list_resource_grouping_recommendations", {
  expect_error(svc$list_resource_grouping_recommendations(), NA)
})

test_that("list_suggested_resiliency_policies", {
  expect_error(svc$list_suggested_resiliency_policies(), NA)
})
