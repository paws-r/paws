svc <- paws::codestar()

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_user_profiles", {
  expect_error(svc$list_user_profiles(), NA)
})
