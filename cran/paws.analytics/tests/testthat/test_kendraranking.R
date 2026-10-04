svc <- paws.analytics::kendraranking()

test_that("list_rescore_execution_plans", {
  skip_on_cran()
  expect_error(svc$list_rescore_execution_plans(), NA)
})

test_that("list_rescore_execution_plans", {
  skip_on_cran()
  expect_error(svc$list_rescore_execution_plans(MaxResults = 20), NA)
})
