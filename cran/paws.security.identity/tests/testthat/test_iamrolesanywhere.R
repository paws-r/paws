svc <- paws.security.identity::iamrolesanywhere()

test_that("list_crls", {
  skip_on_cran()
  expect_error(svc$list_crls(), NA)
})

test_that("list_profiles", {
  skip_on_cran()
  expect_error(svc$list_profiles(), NA)
})

test_that("list_subjects", {
  skip_on_cran()
  expect_error(svc$list_subjects(), NA)
})

test_that("list_trust_anchors", {
  skip_on_cran()
  expect_error(svc$list_trust_anchors(), NA)
})
