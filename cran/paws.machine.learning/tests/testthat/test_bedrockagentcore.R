svc <- paws::bedrockagentcore()

test_that("list_ab_tests", {
  expect_error(svc$list_ab_tests(), NA)
})

test_that("list_batch_evaluations", {
  expect_error(svc$list_batch_evaluations(), NA)
})

test_that("list_recommendations", {
  expect_error(svc$list_recommendations(), NA)
})
