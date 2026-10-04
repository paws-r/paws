svc <- paws.application.integration::eventbridgepipes()

test_that("list_pipes", {
  skip_on_cran()
  expect_error(svc$list_pipes(), NA)
})
