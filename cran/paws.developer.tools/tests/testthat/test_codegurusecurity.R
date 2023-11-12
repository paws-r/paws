svc <- paws::codegurusecurity()

test_that("list_scans", {
  expect_error(svc$list_scans(), NA)
})
