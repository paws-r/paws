context("emrcontainers")

svc <- paws::emrcontainers()

test_that("list_virtual_clusters", {
  expect_error(svc$list_virtual_clusters(), NA)
})
