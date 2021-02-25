svc <- paws::appsync()

test_that("list_graphql_apis", {
  expect_error(svc$list_graphql_apis(), NA)
})
