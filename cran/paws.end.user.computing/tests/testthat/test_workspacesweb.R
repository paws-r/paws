svc <- paws::workspacesweb()

test_that("list_browser_settings", {
  skip_on_cran()
  expect_error(svc$list_browser_settings(), NA)
})

test_that("list_data_protection_settings", {
  skip_on_cran()
  expect_error(svc$list_data_protection_settings(), NA)
})

test_that("list_ip_access_settings", {
  skip_on_cran()
  expect_error(svc$list_ip_access_settings(), NA)
})

test_that("list_network_settings", {
  skip_on_cran()
  expect_error(svc$list_network_settings(), NA)
})

test_that("list_portals", {
  skip_on_cran()
  expect_error(svc$list_portals(), NA)
})

test_that("list_session_loggers", {
  skip_on_cran()
  expect_error(svc$list_session_loggers(), NA)
})

test_that("list_trust_stores", {
  skip_on_cran()
  expect_error(svc$list_trust_stores(), NA)
})

test_that("list_user_access_logging_settings", {
  skip_on_cran()
  expect_error(svc$list_user_access_logging_settings(), NA)
})

test_that("list_user_settings", {
  skip_on_cran()
  expect_error(svc$list_user_settings(), NA)
})
