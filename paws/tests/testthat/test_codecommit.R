svc <- paws::codecommit()

test_that("list_approval_rule_templates", {
  expect_error(svc$list_approval_rule_templates(), NA)
})

test_that("list_repositories", {
  expect_error(svc$list_repositories(), NA)
})
