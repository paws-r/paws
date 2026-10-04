svc <- paws.compute::emrcontainers()

test_that("list_job_templates", {
  skip_on_cran()
  expect_error(svc$list_job_templates(), NA)
})

test_that("list_security_configurations", {
  skip_on_cran()
  expect_error(svc$list_security_configurations(), NA)
})

test_that("list_virtual_clusters", {
  skip_on_cran()
  expect_error(svc$list_virtual_clusters(), NA)
})
