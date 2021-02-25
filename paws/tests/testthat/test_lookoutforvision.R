svc <- paws::lookoutforvision()

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(MaxResults = 20), NA)
})
