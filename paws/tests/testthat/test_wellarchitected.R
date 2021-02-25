svc <- paws::wellarchitected()

test_that("list_lenses", {
  expect_error(svc$list_lenses(), NA)
})

test_that("list_lenses", {
  expect_error(svc$list_lenses(MaxResults = 20), NA)
})

test_that("list_notifications", {
  expect_error(svc$list_notifications(), NA)
})

test_that("list_notifications", {
  expect_error(svc$list_notifications(MaxResults = 20), NA)
})

test_that("list_share_invitations", {
  expect_error(svc$list_share_invitations(), NA)
})

test_that("list_share_invitations", {
  expect_error(svc$list_share_invitations(MaxResults = 20), NA)
})

test_that("list_workloads", {
  expect_error(svc$list_workloads(), NA)
})

test_that("list_workloads", {
  expect_error(svc$list_workloads(MaxResults = 20), NA)
})
