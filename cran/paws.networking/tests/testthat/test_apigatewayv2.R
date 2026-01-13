svc <- paws::apigatewayv2()

test_that("list_portal_products", {
  expect_error(svc$list_portal_products(), NA)
})

test_that("list_portal_products", {
  expect_error(svc$list_portal_products(MaxResults = 20), NA)
})

test_that("list_portals", {
  expect_error(svc$list_portals(), NA)
})

test_that("list_portals", {
  expect_error(svc$list_portals(MaxResults = 20), NA)
})
