svc <- paws::cloudcontrolapi()

test_that("list_resource_requests", {
  expect_error(svc$list_resource_requests(), NA)
})

test_that("list_resource_requests", {
  expect_error(svc$list_resource_requests(MaxResults = 20), NA)
})
