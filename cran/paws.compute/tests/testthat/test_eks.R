svc <- paws::eks()

test_that("describe_addon_versions", {
  expect_error(svc$describe_addon_versions(), NA)
})

test_that("list_access_policies", {
  expect_error(svc$list_access_policies(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_eks_anywhere_subscriptions", {
  expect_error(svc$list_eks_anywhere_subscriptions(), NA)
})
