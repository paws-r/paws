svc <- paws::mobile()

test_that("list_bundles", {
  expect_error(svc$list_bundles(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})
