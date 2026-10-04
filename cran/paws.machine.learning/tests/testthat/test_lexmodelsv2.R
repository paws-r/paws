svc <- paws.machine.learning::lexmodelsv2()

test_that("list_bots", {
  skip_on_cran()
  expect_error(svc$list_bots(), NA)
})

test_that("list_exports", {
  skip_on_cran()
  expect_error(svc$list_exports(), NA)
})

test_that("list_imports", {
  skip_on_cran()
  expect_error(svc$list_imports(), NA)
})

test_that("list_test_executions", {
  skip_on_cran()
  expect_error(svc$list_test_executions(), NA)
})

test_that("list_test_sets", {
  skip_on_cran()
  expect_error(svc$list_test_sets(), NA)
})
