svc <- paws::bedrockruntime()

test_that("list_async_invokes", {
  expect_error(svc$list_async_invokes(), NA)
})
