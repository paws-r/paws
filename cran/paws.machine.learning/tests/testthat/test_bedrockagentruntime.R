svc <- paws::bedrockagentruntime()

test_that("list_sessions", {
  expect_error(svc$list_sessions(), NA)
})
