svc <- paws::supportapp()

test_that("list_slack_channel_configurations", {
  skip_on_cran()
  expect_error(svc$list_slack_channel_configurations(), NA)
})

test_that("list_slack_workspace_configurations", {
  skip_on_cran()
  expect_error(svc$list_slack_workspace_configurations(), NA)
})
