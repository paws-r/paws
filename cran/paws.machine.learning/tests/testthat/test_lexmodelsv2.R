svc <- paws::lexmodelsv2()

test_that("list_bots", {
  expect_error(svc$list_bots(), NA)
})

test_that("list_exports", {
  expect_error(svc$list_exports(), NA)
})

test_that("list_imports", {
  expect_error(svc$list_imports(), NA)
})

test_that("list_test_executions", {
  expect_error(svc$list_test_executions(), NA)
})

test_that("list_test_sets", {
  expect_error(svc$list_test_sets(), NA)
})
