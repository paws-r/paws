svc <- paws::cloudhsmv2()

test_that("describe_backups", {
  expect_error(svc$describe_backups(), NA)
})

test_that("describe_backups", {
  expect_error(svc$describe_backups(MaxResults = 20), NA)
})

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(), NA)
})

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(MaxResults = 20), NA)
})
