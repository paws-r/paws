svc <- paws::pricing()

test_that("describe_services", {
  expect_error(svc$describe_services(), NA)
})

test_that("describe_services", {
  expect_error(svc$describe_services(MaxResults = 20), NA)
})
