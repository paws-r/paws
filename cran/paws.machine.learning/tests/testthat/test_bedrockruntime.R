svc <- paws.machine.learning::bedrockruntime()

test_that("list_async_invokes", {
  skip_on_cran()
  expect_error(svc$list_async_invokes(), NA)
})
