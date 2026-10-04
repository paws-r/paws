svc <- paws::bedrockagentruntime()

test_that("list_sessions", {
  skip_on_cran()
  expect_error(svc$list_sessions(), NA)
})
