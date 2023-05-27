svc <- paws::ivschat()

test_that("list_logging_configurations", {
  expect_error(svc$list_logging_configurations(), NA)
})

test_that("list_rooms", {
  expect_error(svc$list_rooms(), NA)
})
