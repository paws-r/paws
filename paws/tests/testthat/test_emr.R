context("emr")

svc <- paws::emr()

test_that("describe_job_flows", {
  expect_error(svc$describe_job_flows(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_security_configurations", {
  expect_error(svc$list_security_configurations(), NA)
})
