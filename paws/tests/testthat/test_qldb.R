svc <- paws::qldb()

test_that("list_journal_s3_exports", {
  expect_error(svc$list_journal_s3_exports(), NA)
})

test_that("list_journal_s3_exports", {
  expect_error(svc$list_journal_s3_exports(MaxResults = 20), NA)
})

test_that("list_ledgers", {
  expect_error(svc$list_ledgers(), NA)
})

test_that("list_ledgers", {
  expect_error(svc$list_ledgers(MaxResults = 20), NA)
})
