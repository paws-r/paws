svc <- paws.machine.learning::bedrockagentcore()

test_that("list_ab_tests", {
  skip_on_cran()
  expect_error(svc$list_ab_tests(), NA)
})

test_that("list_batch_evaluations", {
  skip_on_cran()
  expect_error(svc$list_batch_evaluations(), NA)
})

test_that("list_recommendations", {
  skip_on_cran()
  expect_error(svc$list_recommendations(), NA)
})
