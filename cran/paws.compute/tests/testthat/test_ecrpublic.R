svc <- paws.compute::ecrpublic()

test_that("describe_registries", {
  skip_on_cran()
  expect_error(svc$describe_registries(), NA)
})

test_that("describe_repositories", {
  skip_on_cran()
  expect_error(svc$describe_repositories(), NA)
})
