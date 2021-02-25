svc <- paws::outposts()

test_that("list_outposts", {
  expect_error(svc$list_outposts(), NA)
})

test_that("list_outposts", {
  expect_error(svc$list_outposts(MaxResults = 20), NA)
})

test_that("list_sites", {
  expect_error(svc$list_sites(), NA)
})

test_that("list_sites", {
  expect_error(svc$list_sites(MaxResults = 20), NA)
})
