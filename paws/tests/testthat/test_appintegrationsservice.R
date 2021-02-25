svc <- paws::appintegrationsservice()

test_that("list_event_integrations", {
  expect_error(svc$list_event_integrations(), NA)
})

test_that("list_event_integrations", {
  expect_error(svc$list_event_integrations(MaxResults = 20), NA)
})
