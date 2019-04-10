context("dynamodb")

svc <- paws::dynamodb()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(), NA)
})

test_that("describe_limits", {
  expect_error(svc$describe_limits(), NA)
})

test_that("list_backups", {
  expect_error(svc$list_backups(), NA)
})

test_that("list_global_tables", {
  expect_error(svc$list_global_tables(), NA)
})

test_that("list_tables", {
  expect_error(svc$list_tables(), NA)
})

}
