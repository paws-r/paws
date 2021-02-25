svc <- paws::cloud9()

test_that("describe_environment_memberships", {
  expect_error(svc$describe_environment_memberships(), NA)
})

test_that("list_environments", {
  expect_error(svc$list_environments(), NA)
})
