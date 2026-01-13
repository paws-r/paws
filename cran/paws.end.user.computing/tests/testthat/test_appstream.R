svc <- paws::appstream()

test_that("describe_app_block_builder_app_block_associations", {
  expect_error(svc$describe_app_block_builder_app_block_associations(), NA)
})

test_that("describe_app_block_builder_app_block_associations", {
  expect_error(svc$describe_app_block_builder_app_block_associations(MaxResults = 20), NA)
})

test_that("describe_app_block_builders", {
  expect_error(svc$describe_app_block_builders(), NA)
})

test_that("describe_app_block_builders", {
  expect_error(svc$describe_app_block_builders(MaxResults = 20), NA)
})

test_that("describe_app_blocks", {
  expect_error(svc$describe_app_blocks(), NA)
})

test_that("describe_app_blocks", {
  expect_error(svc$describe_app_blocks(MaxResults = 20), NA)
})

test_that("describe_application_fleet_associations", {
  expect_error(svc$describe_application_fleet_associations(), NA)
})

test_that("describe_application_fleet_associations", {
  expect_error(svc$describe_application_fleet_associations(MaxResults = 20), NA)
})

test_that("describe_applications", {
  expect_error(svc$describe_applications(), NA)
})

test_that("describe_applications", {
  expect_error(svc$describe_applications(MaxResults = 20), NA)
})

test_that("describe_directory_configs", {
  expect_error(svc$describe_directory_configs(), NA)
})

test_that("describe_directory_configs", {
  expect_error(svc$describe_directory_configs(MaxResults = 20), NA)
})

test_that("describe_fleets", {
  expect_error(svc$describe_fleets(), NA)
})

test_that("describe_image_builders", {
  expect_error(svc$describe_image_builders(), NA)
})

test_that("describe_image_builders", {
  expect_error(svc$describe_image_builders(MaxResults = 20), NA)
})

test_that("describe_images", {
  expect_error(svc$describe_images(), NA)
})

test_that("describe_images", {
  expect_error(svc$describe_images(MaxResults = 20), NA)
})

test_that("describe_stacks", {
  expect_error(svc$describe_stacks(), NA)
})

test_that("describe_usage_report_subscriptions", {
  expect_error(svc$describe_usage_report_subscriptions(), NA)
})

test_that("describe_usage_report_subscriptions", {
  expect_error(svc$describe_usage_report_subscriptions(MaxResults = 20), NA)
})

test_that("list_export_image_tasks", {
  expect_error(svc$list_export_image_tasks(), NA)
})

test_that("list_export_image_tasks", {
  expect_error(svc$list_export_image_tasks(MaxResults = 20), NA)
})
