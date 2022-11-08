svc <- paws::panorama()

test_that("list_application_instances", {
  expect_error(svc$list_application_instances(), NA)
})

test_that("list_application_instances", {
  expect_error(svc$list_application_instances(MaxResults = 20), NA)
})

test_that("list_devices", {
  expect_error(svc$list_devices(), NA)
})

test_that("list_devices", {
  expect_error(svc$list_devices(MaxResults = 20), NA)
})

test_that("list_devices_jobs", {
  expect_error(svc$list_devices_jobs(), NA)
})

test_that("list_devices_jobs", {
  expect_error(svc$list_devices_jobs(MaxResults = 20), NA)
})

test_that("list_node_from_template_jobs", {
  expect_error(svc$list_node_from_template_jobs(), NA)
})

test_that("list_node_from_template_jobs", {
  expect_error(svc$list_node_from_template_jobs(MaxResults = 20), NA)
})

test_that("list_nodes", {
  expect_error(svc$list_nodes(), NA)
})

test_that("list_nodes", {
  expect_error(svc$list_nodes(MaxResults = 20), NA)
})

test_that("list_package_import_jobs", {
  expect_error(svc$list_package_import_jobs(), NA)
})

test_that("list_package_import_jobs", {
  expect_error(svc$list_package_import_jobs(MaxResults = 20), NA)
})

test_that("list_packages", {
  expect_error(svc$list_packages(), NA)
})

test_that("list_packages", {
  expect_error(svc$list_packages(MaxResults = 20), NA)
})
