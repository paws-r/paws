svc <- paws::ecrpublic()

test_that("describe_registries", {
  expect_error(svc$describe_registries(), NA)
})

test_that("describe_repositories", {
  expect_error(svc$describe_repositories(), NA)
})
