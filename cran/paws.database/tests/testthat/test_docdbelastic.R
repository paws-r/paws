svc <- paws::docdbelastic()

test_that("list_cluster_snapshots", {
  expect_error(svc$list_cluster_snapshots(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_pending_maintenance_actions", {
  expect_error(svc$list_pending_maintenance_actions(), NA)
})
