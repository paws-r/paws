svc <- paws::ivsrealtime()

test_that("list_stages", {
  expect_error(svc$list_stages(), NA)
})
