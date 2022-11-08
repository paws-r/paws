svc <- paws::keyspaces()

test_that("list_keyspaces", {
  expect_error(svc$list_keyspaces(), NA)
})
