svc <- paws::route53recoverycluster()

test_that("list_routing_controls", {
  expect_error(svc$list_routing_controls(), NA)
})

test_that("list_routing_controls", {
  expect_error(svc$list_routing_controls(MaxResults = 20), NA)
})
