svc <- paws::supportapp()

test_that("list_slack_channel_configurations", {
  expect_error(svc$list_slack_channel_configurations(), NA)
})

test_that("list_slack_workspace_configurations", {
  expect_error(svc$list_slack_workspace_configurations(), NA)
})
