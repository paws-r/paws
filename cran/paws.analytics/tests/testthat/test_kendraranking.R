svc <- paws::kendraranking()

test_that("list_rescore_execution_plans", {
  expect_error(svc$list_rescore_execution_plans(), NA)
})

test_that("list_rescore_execution_plans", {
  expect_error(svc$list_rescore_execution_plans(MaxResults = 20), NA)
})
