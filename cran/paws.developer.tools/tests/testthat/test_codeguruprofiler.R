svc <- paws::codeguruprofiler()

test_that("list_profiling_groups", {
  expect_error(svc$list_profiling_groups(), NA)
})
