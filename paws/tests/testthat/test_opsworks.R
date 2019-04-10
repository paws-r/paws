context("opsworks")

svc <- paws::opsworks()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_my_user_profile", {
  expect_error(svc$describe_my_user_profile(), NA)
})

test_that("describe_operating_systems", {
  expect_error(svc$describe_operating_systems(), NA)
})

test_that("describe_service_errors", {
  expect_error(svc$describe_service_errors(), NA)
})

test_that("describe_stacks", {
  expect_error(svc$describe_stacks(), NA)
})

test_that("describe_user_profiles", {
  expect_error(svc$describe_user_profiles(), NA)
})

}
