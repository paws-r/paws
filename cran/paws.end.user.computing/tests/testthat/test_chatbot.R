svc <- paws::chatbot()

test_that("describe_chime_webhook_configurations", {
  expect_error(svc$describe_chime_webhook_configurations(), NA)
})

test_that("describe_chime_webhook_configurations", {
  expect_error(svc$describe_chime_webhook_configurations(MaxResults = 20), NA)
})

test_that("describe_slack_channel_configurations", {
  expect_error(svc$describe_slack_channel_configurations(), NA)
})

test_that("describe_slack_channel_configurations", {
  expect_error(svc$describe_slack_channel_configurations(MaxResults = 20), NA)
})

test_that("describe_slack_user_identities", {
  expect_error(svc$describe_slack_user_identities(), NA)
})

test_that("describe_slack_user_identities", {
  expect_error(svc$describe_slack_user_identities(MaxResults = 20), NA)
})

test_that("describe_slack_workspaces", {
  expect_error(svc$describe_slack_workspaces(), NA)
})

test_that("describe_slack_workspaces", {
  expect_error(svc$describe_slack_workspaces(MaxResults = 20), NA)
})

test_that("list_custom_actions", {
  expect_error(svc$list_custom_actions(), NA)
})

test_that("list_custom_actions", {
  expect_error(svc$list_custom_actions(MaxResults = 20), NA)
})

test_that("list_microsoft_teams_channel_configurations", {
  expect_error(svc$list_microsoft_teams_channel_configurations(), NA)
})

test_that("list_microsoft_teams_channel_configurations", {
  expect_error(svc$list_microsoft_teams_channel_configurations(MaxResults = 20), NA)
})

test_that("list_microsoft_teams_configured_teams", {
  expect_error(svc$list_microsoft_teams_configured_teams(), NA)
})

test_that("list_microsoft_teams_configured_teams", {
  expect_error(svc$list_microsoft_teams_configured_teams(MaxResults = 20), NA)
})

test_that("list_microsoft_teams_user_identities", {
  expect_error(svc$list_microsoft_teams_user_identities(), NA)
})

test_that("list_microsoft_teams_user_identities", {
  expect_error(svc$list_microsoft_teams_user_identities(MaxResults = 20), NA)
})
