svc <- paws::iamrolesanywhere()

test_that("list_crls", {
  expect_error(svc$list_crls(), NA)
})

test_that("list_profiles", {
  expect_error(svc$list_profiles(), NA)
})

test_that("list_subjects", {
  expect_error(svc$list_subjects(), NA)
})

test_that("list_trust_anchors", {
  expect_error(svc$list_trust_anchors(), NA)
})
