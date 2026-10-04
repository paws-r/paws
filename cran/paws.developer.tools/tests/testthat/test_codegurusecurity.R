svc <- paws::codegurusecurity()

test_that("list_scans", {
  skip_on_cran()
  expect_error(svc$list_scans(), NA)
})
