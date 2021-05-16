svc <- paws::lexmodelsv2()

test_that("list_bots", {
  expect_error(svc$list_bots(), NA)
})
