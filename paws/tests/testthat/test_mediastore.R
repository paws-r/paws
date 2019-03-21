context("mediastore")

svc <- paws::mediastore()

test_that("describe_container", {
  expect_error(svc$describe_container(), NA)
})

test_that("list_containers", {
  expect_error(svc$list_containers(), NA)
})

test_that("list_containers", {
  expect_error(svc$list_containers(MaxResults = 20), NA)
})
