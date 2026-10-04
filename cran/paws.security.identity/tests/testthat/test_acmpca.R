svc <- paws::acmpca()

test_that("list_certificate_authorities", {
  skip_on_cran()
  expect_error(svc$list_certificate_authorities(), NA)
})

test_that("list_certificate_authorities", {
  skip_on_cran()
  expect_error(svc$list_certificate_authorities(MaxResults = 20), NA)
})
