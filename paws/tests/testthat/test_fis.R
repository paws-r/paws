svc <- paws::fis()

test_that("list_actions", {
  expect_error(svc$list_actions(), NA)
})

test_that("list_experiment_templates", {
  expect_error(svc$list_experiment_templates(), NA)
})

test_that("list_experiments", {
  expect_error(svc$list_experiments(), NA)
})
