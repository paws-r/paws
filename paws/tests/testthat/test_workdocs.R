context("workdocs")

svc <- paws::workdocs()

test_that("describe_activities", {
  expect_error(svc$describe_activities(), NA)
})

test_that("describe_users", {
  expect_error(svc$describe_users(), NA)
})
