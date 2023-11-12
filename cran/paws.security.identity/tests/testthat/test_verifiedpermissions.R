svc <- paws::verifiedpermissions()

test_that("list_policy_stores", {
  expect_error(svc$list_policy_stores(), NA)
})
