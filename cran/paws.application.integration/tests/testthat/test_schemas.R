svc <- paws::schemas()

test_that("list_discoverers", {
  expect_error(svc$list_discoverers(), NA)
})

test_that("list_registries", {
  expect_error(svc$list_registries(), NA)
})
