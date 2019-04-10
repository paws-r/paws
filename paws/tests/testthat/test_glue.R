context("glue")

svc <- paws::glue()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_crawlers", {
  expect_error(svc$list_crawlers(), NA)
})

test_that("list_crawlers", {
  expect_error(svc$list_crawlers(MaxResults = 20), NA)
})

test_that("list_dev_endpoints", {
  expect_error(svc$list_dev_endpoints(), NA)
})

test_that("list_dev_endpoints", {
  expect_error(svc$list_dev_endpoints(MaxResults = 20), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_triggers", {
  expect_error(svc$list_triggers(), NA)
})

test_that("list_triggers", {
  expect_error(svc$list_triggers(MaxResults = 20), NA)
})

}
