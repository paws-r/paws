svc <- paws::codecatalyst()

test_that("list_access_tokens", {
  expect_error(svc$list_access_tokens(), NA)
})

test_that("list_spaces", {
  expect_error(svc$list_spaces(), NA)
})
