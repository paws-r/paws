svc <- paws.networking::route53recoverycluster()

test_that("list_routing_controls", {
  skip_on_cran()
  expect_error(svc$list_routing_controls(), NA)
})

test_that("list_routing_controls", {
  skip_on_cran()
  expect_error(svc$list_routing_controls(MaxResults = 20), NA)
})
