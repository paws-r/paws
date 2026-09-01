svc <- paws::quicksight()

test_that("list_approval_policies", {
  expect_error(svc$list_approval_policies(), NA)
})

test_that("list_approval_policies", {
  expect_error(svc$list_approval_policies(MaxResults = 20), NA)
})
