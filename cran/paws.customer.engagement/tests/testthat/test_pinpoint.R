svc <- paws::pinpoint()

test_that("list_templates", {
  expect_error(svc$list_templates(), NA)
})
