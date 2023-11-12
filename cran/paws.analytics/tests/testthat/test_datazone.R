svc <- paws::datazone()

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})
