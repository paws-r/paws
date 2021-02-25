svc <- paws::appmesh()

test_that("list_meshes", {
  expect_error(svc$list_meshes(), NA)
})
