context("cloudformation")

svc <- paws::cloudformation()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_account_limits", {
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_stacks", {
  expect_error(svc$describe_stacks(), NA)
})

test_that("list_exports", {
  expect_error(svc$list_exports(), NA)
})

test_that("list_stack_sets", {
  expect_error(svc$list_stack_sets(), NA)
})

test_that("list_stack_sets", {
  expect_error(svc$list_stack_sets(MaxResults = 20), NA)
})

test_that("list_stacks", {
  expect_error(svc$list_stacks(), NA)
})

}
