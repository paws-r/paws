context("appsync")

svc <- paws::appsync()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_graphql_apis", {
  expect_error(svc$list_graphql_apis(), NA)
})

}
