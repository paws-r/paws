svc <- paws::kms()

test_that("describe_custom_key_stores", {
  expect_error(svc$describe_custom_key_stores(), NA)
})

test_that("list_aliases", {
  expect_error(svc$list_aliases(), NA)
})

test_that("list_keys", {
  expect_error(svc$list_keys(), NA)
})
