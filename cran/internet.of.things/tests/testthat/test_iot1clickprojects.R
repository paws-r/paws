context("iot1clickprojects")

svc <- paws::iot1clickprojects()

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})
