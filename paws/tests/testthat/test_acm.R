svc <- paws::acm()

test_that("list_certificates", {
  expect_error(svc$list_certificates(), NA)
})
