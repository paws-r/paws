svc <- paws::s3outposts()

test_that("list_endpoints", {
  expect_error(svc$list_endpoints(), NA)
})

test_that("list_endpoints", {
  expect_error(svc$list_endpoints(MaxResults = 20), NA)
})

test_that("list_outposts_with_s3", {
  expect_error(svc$list_outposts_with_s3(), NA)
})

test_that("list_outposts_with_s3", {
  expect_error(svc$list_outposts_with_s3(MaxResults = 20), NA)
})
