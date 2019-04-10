context("appmesh")

svc <- paws::appmesh()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_meshes", {
  expect_error(svc$list_meshes(), NA)
})

}
