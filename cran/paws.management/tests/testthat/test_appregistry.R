svc <- paws.management::appregistry()

test_that("list_applications", {
  skip_on_cran()
  expect_error(svc$list_applications(), NA)
})

test_that("list_attribute_groups", {
  skip_on_cran()
  expect_error(svc$list_attribute_groups(), NA)
})
