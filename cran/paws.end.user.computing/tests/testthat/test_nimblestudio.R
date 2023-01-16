svc <- paws::nimblestudio()

test_that("list_eulas", {
  expect_error(svc$list_eulas(), NA)
})

test_that("list_studios", {
  expect_error(svc$list_studios(), NA)
})
