svc <- paws::kendra()

test_that("list_indices", {
  expect_error(svc$list_indices(), NA)
})

test_that("list_indices", {
  expect_error(svc$list_indices(MaxResults = 20), NA)
})
