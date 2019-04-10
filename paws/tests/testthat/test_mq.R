context("mq")

svc <- paws::mq()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_brokers", {
  expect_error(svc$list_brokers(), NA)
})

test_that("list_brokers", {
  expect_error(svc$list_brokers(MaxResults = 20), NA)
})

test_that("list_configurations", {
  expect_error(svc$list_configurations(), NA)
})

test_that("list_configurations", {
  expect_error(svc$list_configurations(MaxResults = 20), NA)
})

}
