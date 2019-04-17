context("eks")

svc <- paws::eks()

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})
