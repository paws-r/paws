svc <- paws::emrcontainers()

test_that("list_job_templates", {
  expect_error(svc$list_job_templates(), NA)
})

test_that("list_virtual_clusters", {
  expect_error(svc$list_virtual_clusters(), NA)
})
