svc <- paws::finspace()

test_that("list_environments", {
  expect_error(svc$list_environments(), NA)
})
