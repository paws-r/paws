svc <- paws::accessanalyzer()

test_that("list_analyzers", {
  expect_error(svc$list_analyzers(), NA)
})

test_that("list_policy_generations", {
  expect_error(svc$list_policy_generations(), NA)
})
