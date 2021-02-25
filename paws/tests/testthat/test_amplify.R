svc <- paws::amplify()

test_that("list_apps", {
  expect_error(svc$list_apps(), NA)
})
