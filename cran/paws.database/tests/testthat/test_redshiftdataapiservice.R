svc <- paws.database::redshiftdataapiservice()

test_that("list_databases", {
  skip_on_cran()
  expect_error(svc$list_databases(), NA)
})

test_that("list_databases", {
  skip_on_cran()
  expect_error(svc$list_databases(MaxResults = 20), NA)
})

test_that("list_sessions", {
  skip_on_cran()
  expect_error(svc$list_sessions(), NA)
})

test_that("list_sessions", {
  skip_on_cran()
  expect_error(svc$list_sessions(MaxResults = 20), NA)
})

test_that("list_statements", {
  skip_on_cran()
  expect_error(svc$list_statements(), NA)
})

test_that("list_statements", {
  skip_on_cran()
  expect_error(svc$list_statements(MaxResults = 20), NA)
})
