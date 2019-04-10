context("iot1clickprojects")

svc <- paws::iot1clickprojects()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

}
