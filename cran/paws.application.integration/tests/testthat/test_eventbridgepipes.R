svc <- paws::eventbridgepipes()

test_that("list_pipes", {
  expect_error(svc$list_pipes(), NA)
})
