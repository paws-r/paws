svc <- paws::resourcegroups()

test_that("list_group_resources", {
  expect_error(svc$list_group_resources(), NA)
})

test_that("list_group_resources", {
  expect_error(svc$list_group_resources(MaxResults = 20), NA)
})

test_that("list_groups", {
  expect_error(svc$list_groups(), NA)
})

test_that("list_groups", {
  expect_error(svc$list_groups(MaxResults = 20), NA)
})

test_that("list_tag_sync_tasks", {
  expect_error(svc$list_tag_sync_tasks(), NA)
})

test_that("list_tag_sync_tasks", {
  expect_error(svc$list_tag_sync_tasks(MaxResults = 20), NA)
})
