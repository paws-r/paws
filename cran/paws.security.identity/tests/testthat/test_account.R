svc <- paws::account()

test_that("list_regions", {
  expect_error(svc$list_regions(), NA)
})

test_that("list_regions", {
  expect_error(svc$list_regions(MaxResults = 20), NA)
})
