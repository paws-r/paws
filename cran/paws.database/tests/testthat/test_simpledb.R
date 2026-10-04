svc <- paws::simpledb()

test_that("list_domains", {
  skip_on_cran()
  expect_error(svc$list_domains(), NA)
})
