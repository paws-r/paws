context("amplify")

svc <- paws::amplify()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_apps", {
  expect_error(svc$list_apps(), NA)
})

}
