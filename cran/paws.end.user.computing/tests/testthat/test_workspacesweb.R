svc <- paws::workspacesweb()

test_that("list_browser_settings", {
  expect_error(svc$list_browser_settings(), NA)
})

test_that("list_network_settings", {
  expect_error(svc$list_network_settings(), NA)
})

test_that("list_portals", {
  expect_error(svc$list_portals(), NA)
})

test_that("list_trust_stores", {
  expect_error(svc$list_trust_stores(), NA)
})

test_that("list_user_access_logging_settings", {
  expect_error(svc$list_user_access_logging_settings(), NA)
})

test_that("list_user_settings", {
  expect_error(svc$list_user_settings(), NA)
})
