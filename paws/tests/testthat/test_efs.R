context("efs")

svc <- paws::efs()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_file_systems", {
  expect_error(svc$describe_file_systems(), NA)
})

test_that("describe_mount_targets", {
  expect_error(svc$describe_mount_targets(), NA)
})

}
