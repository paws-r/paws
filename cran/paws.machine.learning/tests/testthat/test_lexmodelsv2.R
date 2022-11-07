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
