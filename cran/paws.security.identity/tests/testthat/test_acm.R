svc <- paws::acm()

test_that("list_acme_endpoints", {
  expect_error(svc$list_acme_endpoints(), NA)
})

test_that("list_acme_endpoints", {
  expect_error(svc$list_acme_endpoints(MaxResults = 20), NA)
})

test_that("list_certificates", {
  expect_error(svc$list_certificates(), NA)
})
