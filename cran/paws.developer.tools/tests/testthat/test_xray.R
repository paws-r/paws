svc <- paws::xray()

test_that("list_resource_policies", {
  expect_error(svc$list_resource_policies(), NA)
})
